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


package body org.allbinary.logic.system.SoftwareInformation_Package is

   procedure Initialize_Fields (This : in out SoftwareInformation'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SoftwareInformation'Class; name : Unbounded_String; version : Unbounded_String; shortName : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.version := version;
        This.shortName := StringMaker_Package.Create.append (shortName).append (KotlinUtil_Package.getShortName).toString;
   end Initialize;

   function Create (name : Unbounded_String; version : Unbounded_String; shortName : Unbounded_String) return SoftwareInformation_Access is
      This : constant SoftwareInformation_Access := new SoftwareInformation;
   begin
      SoftwareInformation_Package.Initialize (This.all, name, version, shortName);
      return This;
   end Create;

   function getName (This : in out SoftwareInformation) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getVersion (This : in out SoftwareInformation) return Unbounded_String is
   begin
        return This.version;
   end getVersion;

   function toShortString (This : in out SoftwareInformation) return Unbounded_String is
   begin
        return This.shortName;
   end toShortString;

   function toString (This : in out SoftwareInformation) return Unbounded_String is
      NAME : Unbounded_String;
      VERSION : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
        NAME := To_Unbounded_String ("Name: ");
        VERSION := To_Unbounded_String ("Version: ");
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (NAME);
        stringBuffer.append (This.getName);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (VERSION);
        stringBuffer.append (This.getVersion);
        return stringBuffer.toString;
   end toString;

end org.allbinary.logic.system.SoftwareInformation_Package;


