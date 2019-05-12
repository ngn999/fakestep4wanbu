#line 1 "Tweak.xm"




































#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class WB_stepData_Object; @class WB_stepData_Day_Object; 
static void (*_logos_orig$_ungrouped$WB_stepData_Day_Object$setI_stepNum$)(_LOGOS_SELF_TYPE_NORMAL WB_stepData_Day_Object* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$WB_stepData_Day_Object$setI_stepNum$(_LOGOS_SELF_TYPE_NORMAL WB_stepData_Day_Object* _LOGOS_SELF_CONST, SEL, int); static void (*_logos_orig$_ungrouped$WB_stepData_Object$setI_stepNum$)(_LOGOS_SELF_TYPE_NORMAL WB_stepData_Object* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$WB_stepData_Object$setI_stepNum$(_LOGOS_SELF_TYPE_NORMAL WB_stepData_Object* _LOGOS_SELF_CONST, SEL, int); 

#line 36 "Tweak.xm"

static void _logos_method$_ungrouped$WB_stepData_Day_Object$setI_stepNum$(_LOGOS_SELF_TYPE_NORMAL WB_stepData_Day_Object* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg2) {
    _logos_orig$_ungrouped$WB_stepData_Day_Object$setI_stepNum$(self, _cmd, 1000 + rand()%1000);
    return;
}




static void _logos_method$_ungrouped$WB_stepData_Object$setI_stepNum$(_LOGOS_SELF_TYPE_NORMAL WB_stepData_Object* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg2) {
    _logos_orig$_ungrouped$WB_stepData_Object$setI_stepNum$(self, _cmd, 1000 + rand()%1000);
    return;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WB_stepData_Day_Object = objc_getClass("WB_stepData_Day_Object"); MSHookMessageEx(_logos_class$_ungrouped$WB_stepData_Day_Object, @selector(setI_stepNum:), (IMP)&_logos_method$_ungrouped$WB_stepData_Day_Object$setI_stepNum$, (IMP*)&_logos_orig$_ungrouped$WB_stepData_Day_Object$setI_stepNum$);Class _logos_class$_ungrouped$WB_stepData_Object = objc_getClass("WB_stepData_Object"); MSHookMessageEx(_logos_class$_ungrouped$WB_stepData_Object, @selector(setI_stepNum:), (IMP)&_logos_method$_ungrouped$WB_stepData_Object$setI_stepNum$, (IMP*)&_logos_orig$_ungrouped$WB_stepData_Object$setI_stepNum$);} }
#line 50 "Tweak.xm"
