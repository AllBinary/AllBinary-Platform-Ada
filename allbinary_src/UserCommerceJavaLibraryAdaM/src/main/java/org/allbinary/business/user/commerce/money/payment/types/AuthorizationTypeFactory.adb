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


package body org.allbinary.business.user.commerce.money.payment.types.AuthorizationTypeFactory_Package is

   procedure Initialize_Fields (This : in out AuthorizationTypeFactory'Class) is
   begin
      null;
      This.NONE := AuthorizationType_Package.Create (To_Unbounded_String ("None"));
      This.VOICE := AuthorizationType_Package.Create (To_Unbounded_String ("Voice"));
      This.RETINAL := AuthorizationType_Package.Create (To_Unbounded_String ("Retinal"));
      This.IMAGE := AuthorizationType_Package.Create (To_Unbounded_String ("Image"));
      This.DNA := AuthorizationType_Package.Create (To_Unbounded_String ("DNA"));
      This.PRINT := AuthorizationType_Package.Create (To_Unbounded_String ("Print"));
      This.CHIP := AuthorizationType_Package.Create (To_Unbounded_String ("Chip"));
   end Initialize_Fields;

   procedure Initialize (This : in out AuthorizationTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AuthorizationTypeFactory_Access is
      This : constant AuthorizationTypeFactory_Access := new AuthorizationTypeFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AuthorizationTypeFactory_Access is
   begin
        return AuthorizationTypeFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant AuthorizationTypeFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AuthorizationTypeFactory_Package.Create;

end org.allbinary.business.user.commerce.money.payment.types.AuthorizationTypeFactory_Package;


