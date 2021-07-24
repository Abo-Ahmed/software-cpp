#include <stdio.h>
#include <stdlib.h>
#include <math.h>
//convert Degree to Radian
double degToRad(double degree)
{
    return ((3.1415926 / 180) * degree);
}
//convert Radian to Degree
double radToDeg(double radian)
{
    return (radian * (180/3.1415926));
}
//make sure a value is between 0 and 360
double moreLess360(double value)
{
    while(value > 360 || value < 0)
    {
        if(value > 360)
            value -= 360;

        else if (value <0)
            value += 360;
    }

    return value;
}
//make sure a value is between 0 and 24
double moreLess24(double value)
{
    while(value > 24 || value < 0)
    {
        if(value > 24)
            value -= 24;

        else if (value <0)
            value += 24;
    }

    return value;
}



int main()
{

 double fajrTime, sunRiseTime, zuhrTime, asrTime, maghribTime, ishaTime;
 int year = 2014 , month = 6 , day = 29 , timeZone = 2;
 double longitude = 30.2 , latitude = 30 , fajrTwilight = -19.5 , ishaTwilight = -17.5 ;
int hours, minutes;

{
    double D = (367 * year) - ((year + (int)((month + 9) / 12)) * 7 / 4) + (((int)(275 * month / 9)) + day - 730531.5);

    double L = 280.461 + 0.9856474 * D;
    L = moreLess360(L);

    double M = 357.528 + (0.9856003) * D;
    M = moreLess360(M);

    double Lambda = L + 1.915 * sin(degToRad(M)) + 0.02 * sin(degToRad(2 * M));
    Lambda = moreLess360(Lambda);

    double Obliquity = 23.439 - 0.0000004 * D;
    double Alpha = radToDeg(atan((cos(degToRad(Obliquity)) * tan(degToRad(Lambda)))));
    Alpha = moreLess360(Alpha);

    Alpha = Alpha - (360 * (int)(Alpha / 360));
    Alpha = Alpha + 90 * (floor(Lambda / 90) - floor(Alpha / 90));

    double ST = 100.46 + 0.985647352 * D;
    double Dec = radToDeg(asin(sin(degToRad(Obliquity)) * sin(degToRad(Lambda))));
    double Durinal_Arc = radToDeg(acos((sin(degToRad(-0.8333)) - sin(degToRad(Dec)) * sin(degToRad(latitude))) / (cos(degToRad(Dec)) * cos(degToRad(latitude)))));

    double Noon = Alpha - ST;
    Noon = moreLess360(Noon);


    double UT_Noon = Noon - longitude;


    ////////////////////////////////////////////
    // Calculating Prayer Times Arcs & Times //
    //////////////////////////////////////////

    // 2) Zuhr Time [Local noon]
    zuhrTime = UT_Noon / 15 + timeZone;

    // Asr Hanafi
    //double Asr_Alt =radToDeg(atan(2+tan(degToRad(latitude - Dec))));

    // Asr Shafii
    double Asr_Alt = radToDeg(atan(1 + tan(degToRad(latitude - Dec))));
    double Asr_Arc = radToDeg(acos((sin(degToRad(90 - Asr_Alt)) - sin(degToRad(Dec)) * sin(degToRad(latitude))) / (cos(degToRad(Dec)) * cos(degToRad(latitude)))));
    Asr_Arc = Asr_Arc / 15;
    // 3) Asr Time
    asrTime = zuhrTime + Asr_Arc;

    // 1) Shorouq Time
    sunRiseTime = zuhrTime - (Durinal_Arc / 15);

    // 4) Maghrib Time
    maghribTime = zuhrTime + (Durinal_Arc / 15);


    double Esha_Arc = radToDeg(acos((sin(degToRad(ishaTwilight)) - sin(degToRad(Dec)) * sin(degToRad(latitude))) / (cos(degToRad(Dec)) * cos(degToRad(latitude)))));
    // 5) Isha Time
    ishaTime = zuhrTime + (Esha_Arc / 15);

    // 0) Fajr Time
    double Fajr_Arc = radToDeg(acos((sin(degToRad(fajrTwilight)) - sin(degToRad(Dec)) * sin(degToRad(latitude))) / (cos(degToRad(Dec)) * cos(degToRad(latitude)))));
    fajrTime = zuhrTime - (Fajr_Arc / 15);


}

   //there is an erorr here
   printf("%d : %d \n%d : %d \n%d : %d \n%d : %d \n%d : %d \n",floor(moreLess24(fajrTime)),floor(moreLess24(fajrTime - floor(moreLess24(fajrTime))) * 60)
          ,floor(moreLess24(zuhrTime)),floor(moreLess24(zuhrTime - floor(moreLess24(zuhrTime))) * 60)
          ,floor(moreLess24(asrTime)),floor(moreLess24(asrTime - floor(moreLess24(asrTime))) * 60)
          ,floor(moreLess24(maghribTime)),floor(moreLess24(maghribTime - floor(moreLess24(maghribTime))) * 60)
          ,floor(moreLess24(ishaTime)),floor(moreLess24(ishaTime - floor(moreLess24(ishaTime))) * 60));


    return 0;
}
