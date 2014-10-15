/*
 * Definitions for senodia compass chip.
 */
#ifndef MAGNETIC_H
#define MAGNETIC_H

#include <linux/ioctl.h>

#define ABSMIN_YAW	0
#define ABSMAX_YAW	360000
#define ABSMIN_PITCH	-180000
#define ABSMAX_PITCH	180000
#define ABSMIN_ROLL	-180000
#define ABSMAX_ROLL	180000
#define  ABSMIN_ACC	-256
#define  ABSMAX_ACC	256
#define ABSMIN_MAG	-32768
#define ABSMAX_MAG	32767

#define SENODIA_I2C_NAME "st480"

#define SENSOR_SIZE_3X3_QFN	0
#define SENSOR_SIZE_2X2_BGA	0
#define SENSOR_SIZE_1_6X1_6_LGA	1
#define SENSOR_SIZE_1_6X1_6_BGA	0
#define CONFIG_ST480_BOARD_LOCATION_FRONT
//#define CONFIG_ST480_BOARD_LOCATION_FRONT_DEGREE_0
#define CONFIG_ST480_BOARD_LOCATION_FRONT_DEGREE_180
/*******************************************************************/
/********************if unsure,don't modify them!*******************/
//#define SENODIA_DEBUG

//INT controll(Burst Mode)
//#define ST480_BURST_MODE

#ifndef ST480_BURST_MODE
//#define SENSOR_AUTO_TEST
#endif

//accelerometer separate controll
#define ACCELEROMETER_CONTROLL   //used in bin
/*******************************************************************/

#define SENODIAIO                   0xA1

/* IOCTLs for Senodia library */
#define IOCTL_SENSOR_GET_DATA_MAG           _IO(SENODIAIO, 0x01)
#define IOCTL_SENSOR_WRITE_DATA_COMPASS     _IO(SENODIAIO, 0x02)
#define IOCTL_SENSOR_GET_ACC_FLAG	        _IO(SENODIAIO, 0x03)
#define IOCTL_SENSOR_GET_COMPASS_FLAG	    _IO(SENODIAIO, 0x04)
#define IOCTL_SENSOR_GET_COMPASS_DELAY 	    _IO(SENODIAIO, 0x05)

/* IOCTLs for APPs */
#define ECS_IOCTL_APP_SET_MFLAG		_IOW(SENODIAIO, 0x10, short)
#define ECS_IOCTL_APP_GET_MFLAG		_IOR(SENODIAIO, 0x11, short)
#define ECS_IOCTL_APP_SET_AFLAG		_IOW(SENODIAIO, 0x12, short)
#define ECS_IOCTL_APP_GET_AFLAG		_IOR(SENODIAIO, 0x13, short)
#define ECS_IOCTL_APP_SET_DELAY		_IOW(SENODIAIO, 0x14, short)
#define ECS_IOCTL_APP_GET_DELAY		_IOR(SENODIAIO, 0x15, short)
#define ECS_IOCTL_APP_SET_MVFLAG	_IOW(SENODIAIO, 0x16, short)
#define ECS_IOCTL_APP_GET_MVFLAG	_IOR(SENODIAIO, 0x17, short)
#define ECS_IOCTL_WRITE_ACC_DATA	_IOW(SENODIAIO, 0x18, short[3])
#endif



