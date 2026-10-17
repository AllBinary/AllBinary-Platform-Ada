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


package body org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package is

   procedure Initialize_Fields (This : in out ThirdPartyMessageFactory'Class) is
   begin
      null;
      This.AUTHORIZED := To_Unbounded_String ("Authorized");
      This.NOT_AUTHORIZED := To_Unbounded_String ("Not Authorized");
      This.LINKAGE_ERROR := To_Unbounded_String ("Linkage Error");
   end Initialize_Fields;

   procedure Initialize (This : in out ThirdPartyMessageFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThirdPartyMessageFactory_Access is
      This : constant ThirdPartyMessageFactory_Access := new ThirdPartyMessageFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThirdPartyMessageFactory_Access is
   begin
        return ThirdPartyMessageFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant ThirdPartyMessageFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ThirdPartyMessageFactory_Package.Create;

end org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package;


