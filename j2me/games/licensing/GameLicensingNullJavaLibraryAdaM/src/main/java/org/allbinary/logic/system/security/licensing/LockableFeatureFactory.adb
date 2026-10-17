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


package body org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package is

   procedure Initialize_Fields (This : in out LockableFeatureFactory'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out LockableFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LockableFeatureFactory_Access is
      This : constant LockableFeatureFactory_Access := new LockableFeatureFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LockableFeatureFactory_Access is
   begin
        return LockableFeatureFactory_Package.instance;
   end getInstance;

   function getList (This : in out LockableFeatureFactory) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

   procedure getInstance is
      Java_Result : constant LockableFeatureFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getList (This : in out LockableFeatureFactory) is
      Java_Result : constant BasicArrayList_Access := LockableFeatureFactory'Class (This).getList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getList;

begin
   null;
   instance := LockableFeatureFactory_Package.Create;

end org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package;


