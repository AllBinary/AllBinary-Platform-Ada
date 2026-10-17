-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.persistance.PlatformRecordIdUtil_Package is

   procedure Initialize_Fields (This : in out PlatformRecordIdUtil'Class) is
   begin
      null;
      This.PLATFORM_SHORT_NAME := To_Unbounded_String ("JSE");
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformRecordIdUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformRecordIdUtil_Access is
      This : constant PlatformRecordIdUtil_Access := new PlatformRecordIdUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlatformRecordIdUtil_Access is
   begin
        return PlatformRecordIdUtil_Package.instance;
   end getInstance;

   function getRecordId (This : in out PlatformRecordIdUtil; abeClientInformation : AbeClientInformationInterface_Access; baseRecordId : Unbounded_String) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (abeClientInformation.toShortString).append (CommonSeps_Package.getInstance.UNDERSCORE).append (This.PLATFORM_SHORT_NAME).append (baseRecordId).toString;
   end getRecordId;

   procedure getInstance is
      Java_Result : constant PlatformRecordIdUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getRecordId (This : in out PlatformRecordIdUtil; abeClientInformation : AbeClientInformationInterface_Access; baseRecordId : Unbounded_String) is
      Java_Result : constant Unbounded_String := PlatformRecordIdUtil'Class (This).getRecordId (abeClientInformation, baseRecordId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecordId;

begin
   null;
   instance := PlatformRecordIdUtil_Package.Create;

end org.allbinary.persistance.PlatformRecordIdUtil_Package;


