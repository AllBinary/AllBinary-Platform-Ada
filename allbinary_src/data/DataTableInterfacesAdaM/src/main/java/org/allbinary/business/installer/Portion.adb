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



package body org.allbinary.business.installer.Portion_Package is

   procedure Initialize_Fields (This : in out Portion'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out Portion'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.current := Java_Unbox_Integer (hashMap.get (Java_Box (To_Unbounded_String ("current"))));
        This.total := Java_Unbox_Integer (hashMap.get (Java_Box (To_Unbounded_String ("total"))));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return Portion_Access is
      This : constant Portion_Access := new Portion;
   begin
      Portion_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getCurrent (This : in out Portion) return Integer is
   begin
        return This.current;
   end getCurrent;

   function getTotal (This : in out Portion) return Integer is
   begin
        return This.total;
   end getTotal;

end org.allbinary.business.installer.Portion_Package;


