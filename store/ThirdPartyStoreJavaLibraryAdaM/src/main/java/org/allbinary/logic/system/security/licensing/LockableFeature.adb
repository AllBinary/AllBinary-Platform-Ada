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


package body org.allbinary.logic.system.security.licensing.LockableFeature_Package is

   procedure Initialize_Fields (This : in out LockableFeature'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LockableFeature'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return LockableFeature_Access is
      This : constant LockableFeature_Access := new LockableFeature;
   begin
      LockableFeature_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getName (This : in out LockableFeature) return Unbounded_String is
   begin
        return This.name;
   end getName;

end org.allbinary.logic.system.security.licensing.LockableFeature_Package;


