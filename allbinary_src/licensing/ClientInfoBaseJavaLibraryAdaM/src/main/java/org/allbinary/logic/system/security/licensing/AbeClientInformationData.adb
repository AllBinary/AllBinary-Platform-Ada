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


package body org.allbinary.logic.system.security.licensing.AbeClientInformationData_Package is

   procedure Initialize_Fields (This : in out AbeClientInformationData'Class) is
   begin
      null;
      This.KEY := To_Unbounded_String ("KEY");
      This.NAME := To_Unbounded_String ("NAME");
      This.VERSION := To_Unbounded_String ("VERSION");
      This.SPECIALNAME := To_Unbounded_String ("SPECIALNAME");
      This.LICENSEID := To_Unbounded_String ("LICENSEID");
      This.LICENSE_TYPE := To_Unbounded_String ("LICENSETYPE");
      This.PREVIOUSLICENSEID := To_Unbounded_String ("PREVIOUSLICENSEID");
      This.OSNAME := To_Unbounded_String ("OSNAME");
      This.OSARCH := To_Unbounded_String ("OSARCH");
      This.OSVERSION := To_Unbounded_String ("OSVERSION");
      This.OS := To_Unbounded_String ("OS");
      This.HARDWARE := To_Unbounded_String ("HARDWARE");
      This.LICENSESERVERS := To_Unbounded_String ("LICENSESERVERS");
      This.NEWLICENSE := To_Unbounded_String ("NEWLICENSE");
      This.ISNEW := To_Unbounded_String ("ISNEW");
      This.SPECIAL := To_Unbounded_String ("SPECIAL");
   end Initialize_Fields;


   function getInstance return AbeClientInformationData_Access is
   begin
        return AbeClientInformationData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbeClientInformationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbeClientInformationData_Access is
      This : constant AbeClientInformationData_Access := new AbeClientInformationData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant AbeClientInformationData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AbeClientInformationData_Package.Create;

end org.allbinary.logic.system.security.licensing.AbeClientInformationData_Package;


