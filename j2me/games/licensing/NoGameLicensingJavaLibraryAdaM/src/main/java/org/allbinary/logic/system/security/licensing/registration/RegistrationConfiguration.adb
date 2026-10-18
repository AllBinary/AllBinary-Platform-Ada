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

package body org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out RegistrationConfiguration'Class) is
   begin
      null;
      This.registrationCode := To_Unbounded_String ("No Registration Code");
      This.NAME := To_Unbounded_String ("registrationid");
   end Initialize_Fields;


   procedure Initialize (This : in out RegistrationConfiguration'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RegistrationConfiguration_Access is
      This : constant RegistrationConfiguration_Access := new RegistrationConfiguration;
   begin
      RegistrationConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return RegistrationConfiguration_Access is
   begin
        return RegistrationConfiguration_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   procedure read (This : in out RegistrationConfiguration) is
   begin
        null;
   end read;

   --  throws Exception
   procedure write (This : in out RegistrationConfiguration) is
   begin
        null;
   end write;

   function toString (This : in out RegistrationConfiguration) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("Registration Code: ")).append (RegistrationConfiguration'Class (This).getRegistrationCode).toString;
   end toString;

   procedure setRegistrationCode (This : in out RegistrationConfiguration; registrationCode : Unbounded_String) is
   begin
        This.registrationCode := registrationCode;
   end setRegistrationCode;

   function getRegistrationCode (This : in out RegistrationConfiguration) return Unbounded_String is
   begin
        return This.registrationCode;
   end getRegistrationCode;

begin
   null;
   SINGLETON := RegistrationConfiguration_Package.Create;

end org.allbinary.logic.system.security.licensing.registration.RegistrationConfiguration_Package;


