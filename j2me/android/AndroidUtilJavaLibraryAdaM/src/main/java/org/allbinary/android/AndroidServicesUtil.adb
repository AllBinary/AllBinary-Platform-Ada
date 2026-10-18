-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2019 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


package body org.allbinary.android.AndroidServicesUtil_Package is

   procedure Initialize_Fields (This : in out AndroidServicesUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.resourceUtil := ResourceUtil_Package.getInstance;
      This.SERVICE_LIMIT_MAX := 1000;
      This.IS_SERVICE_RUNNING := To_Unbounded_String ("isServiceRunning");
      This.SERVICE_NOT_FOUND_RUNNING := To_Unbounded_String ("Service not found Running: ");
   end Initialize_Fields;

   procedure Initialize (This : in out AndroidServicesUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AndroidServicesUtil_Access is
      This : constant AndroidServicesUtil_Access := new AndroidServicesUtil;
   begin
      AndroidServicesUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AndroidServicesUtil_Access is
   begin
        return AndroidServicesUtil_Package.instance;
   end getInstance;

   function isServiceRunning (This : in out AndroidServicesUtil; name : Unbounded_String) return Boolean is
      activityManager : ActivityManager_Access;
      runningServicesList : List_Access;
      runningServiceInfo : RunningServiceInfo_Access;
      serviceComponent : ComponentName_Access;
      serviceName : Unbounded_String;
      size : Integer;
      index : Integer;
   begin
        activityManager := ActivityManager_Access (This.resourceUtil.getContext.getSystemService (Context_Package.ACTIVITY_SERVICE));
        runningServicesList := activityManager.getRunningServices (This.SERVICE_LIMIT_MAX);
        runningServiceInfo := null;
        serviceComponent := null;
        serviceName := Null_Unbounded_String;
        size := runningServicesList.size;
        for index in 0 .. (size) - 1 loop
            runningServiceInfo := runningServicesList.get (index);
            serviceComponent := runningServiceInfo.service;
            serviceName := serviceComponent.toString;
            if ((Index (serviceName, Java_Image (name)) - 1)) >= (0) then
                return True;
            end if;
        end loop;
        This.logUtil.putF (This.SERVICE_NOT_FOUND_RUNNING & name, AndroidServicesUtil_Access'(This'Unchecked_Access), This.IS_SERVICE_RUNNING);
        return False;
   end isServiceRunning;

   procedure isServiceRunning (This : in out AndroidServicesUtil; name : Unbounded_String) is
      Java_Result : constant Boolean := AndroidServicesUtil'Class (This).isServiceRunning (name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isServiceRunning;

begin
   null;
   instance := AndroidServicesUtil_Package.Create;

end org.allbinary.android.AndroidServicesUtil_Package;


