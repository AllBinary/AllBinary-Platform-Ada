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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.system.os.SystemProperties_Package; use org.allbinary.logic.system.os.SystemProperties_Package;

package body org.allbinary.logic.system.os.GenericOperatingSystem_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out GenericOperatingSystem'Class) is
   begin
      null;
      This.osName := Null_Unbounded_String;
      This.osArch := Null_Unbounded_String;
      This.osVersion := Null_Unbounded_String;
      This.characterSet := CharacterSet_Package.Create;
      This.scalable := False;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericOperatingSystem'Class) is
      systemProperties : SystemProperties_Access;
      stringValidationUtil : StringValidationUtil_Access;
      EMPTY_STRING : Unbounded_String;
   begin
      Initialize_Fields (This);
        systemProperties := SystemProperties_Package.getInstance;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        if stringValidationUtil.isEmpty (systemProperties.getName) then
            This.osName := EMPTY_STRING;
        else
            This.osName := systemProperties.getName;
        end if;
        if stringValidationUtil.isEmpty (systemProperties.getArch) then
            This.osArch := EMPTY_STRING;
        else
            This.osArch := systemProperties.getArch;
        end if;
        if stringValidationUtil.isEmpty (systemProperties.getVersion) then
            This.osVersion := EMPTY_STRING;
        else
            This.osVersion := systemProperties.getVersion;
        end if;
   end Initialize;

   function Create return GenericOperatingSystem_Access is
      This : constant GenericOperatingSystem_Access := new GenericOperatingSystem;
   begin
      GenericOperatingSystem_Package.Initialize (This.all);
      return This;
   end Create;

   function getName (This : in out GenericOperatingSystem) return Unbounded_String is
   begin
        return This.osName;
   end getName;

   function getVersion (This : in out GenericOperatingSystem) return Unbounded_String is
   begin
        return This.osVersion;
   end getVersion;

   function getArch (This : in out GenericOperatingSystem) return Unbounded_String is
   begin
        return This.osArch;
   end getArch;

   function getCharacterSet (This : in out GenericOperatingSystem) return CharacterSet_Access is
   begin
        return This.characterSet;
   end getCharacterSet;

   function isOverScan (This : in out GenericOperatingSystem) return Boolean is
   begin
        return False;
   end isOverScan;

   function getOverScanXPercent (This : in out GenericOperatingSystem) return Integer is
   begin
        return 100;
   end getOverScanXPercent;

   function getOverScanYPercent (This : in out GenericOperatingSystem) return Integer is
   begin
        return 100;
   end getOverScanYPercent;

   function isScalable (This : in out GenericOperatingSystem) return Boolean is
   begin
        return This.scalable;
   end isScalable;

   function isAutoHide (This : in out GenericOperatingSystem) return Boolean is
   begin
        return False;
   end isAutoHide;

   function toString (This : in out GenericOperatingSystem) return Unbounded_String is
      NEW_LINE : Unbounded_String;
      osBuffer : StringMaker_Access;
   begin
        NEW_LINE := CommonSeps_Package.getInstance.NEW_LINE;
        osBuffer := StringMaker_Package.Create;
        osBuffer.append (To_Unbounded_String ("Operating System Info: " & ASCII.LF & ""));
        osBuffer.append (GenericOperatingSystem'Class (This).getName);
        osBuffer.append (NEW_LINE);
        osBuffer.append (GenericOperatingSystem'Class (This).getArch);
        osBuffer.append (NEW_LINE);
        osBuffer.append (GenericOperatingSystem'Class (This).getVersion);
        osBuffer.append (NEW_LINE);
        osBuffer.append (StringUtil_Package.getInstance.toString (GenericOperatingSystem'Class (This).getCharacterSet));
        osBuffer.append (NEW_LINE);
        return osBuffer.toString;
   end toString;

end org.allbinary.logic.system.os.GenericOperatingSystem_Package;


