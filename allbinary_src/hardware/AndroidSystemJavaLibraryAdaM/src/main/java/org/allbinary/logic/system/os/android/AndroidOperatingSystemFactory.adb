--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with org.allbinary.logic.system.os.NoOperatingSystem_Package; use org.allbinary.logic.system.os.NoOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystems_Package; use org.allbinary.logic.system.os.OperatingSystems_Package;
with org.allbinary.logic.system.os.SystemProperties_Package; use org.allbinary.logic.system.os.SystemProperties_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.os.android.AndroidOS_Package; use org.allbinary.logic.system.os.android.AndroidOS_Package;

package body org.allbinary.logic.system.os.android.AndroidOperatingSystemFactory_Package is

   package NoOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.NoOperatingSystem_Package;
   package OperatingSystems_Package renames Standard.org.allbinary.logic.system.os.OperatingSystems_Package;
   package SystemProperties_Package renames Standard.org.allbinary.logic.system.os.SystemProperties_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out AndroidOperatingSystemFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AndroidOperatingSystemFactory_Access is
   begin
        return AndroidOperatingSystemFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AndroidOperatingSystemFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AndroidOperatingSystemFactory_Access is
      This : constant AndroidOperatingSystemFactory_Access := new AndroidOperatingSystemFactory;
   begin
      AndroidOperatingSystemFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getOperatingSystemInstance (This : in out AndroidOperatingSystemFactory) return GenericOperatingSystem_Access is
      GenericOperatingSystem : GenericOperatingSystem_Access;
      systemProperties : SystemProperties_Access;
      osName : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        begin
            GenericOperatingSystem := null;
            systemProperties := SystemProperties_Package.getInstance;
            osName := systemProperties.getName;
            if (Java_Compare_To (osName, OperatingSystems_Package.getInstance.ANDROID)) = (0) then
                GenericOperatingSystem := GenericOperatingSystem_Access (AndroidOS_Package.Create);
            else
                if OperatingSystems_Package.getInstance.isUnknownSpecificOSAllowed then
                    GenericOperatingSystem := GenericOperatingSystem_Access (AndroidOS_Package.Create);
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Specific Android OS Not Supported: ") & osName));
                end if;
            end if;
            return GenericOperatingSystem;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (To_Unbounded_String ("Failed to get OperatingSystem returning NoOperatingSystem"), AndroidOperatingSystemFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            return NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
                end;
        end;
   end getOperatingSystemInstance;

begin
   null;
   instance := AndroidOperatingSystemFactory_Package.Create;

end org.allbinary.logic.system.os.android.AndroidOperatingSystemFactory_Package;


