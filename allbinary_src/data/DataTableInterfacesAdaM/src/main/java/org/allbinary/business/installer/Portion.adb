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


   procedure Initialize (This : in out Portion'Class; hashMap : HashMap_Access) is
   begin
      Initialize_Fields (This);
        This.current := Integer (hashMap.get (To_Unbounded_String ("current")));
        This.total := Integer (hashMap.get (To_Unbounded_String ("total")));
   end Initialize;

   function Create (hashMap : HashMap_Access) return Portion_Access is
      This : constant Portion_Access := new Portion;
   begin
      Initialize (This.all, hashMap);
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

   procedure getCurrent (This : in out Portion) is
      Java_Result : constant Integer := Portion'Class (This).getCurrent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCurrent;

   procedure getTotal (This : in out Portion) is
      Java_Result : constant Integer := Portion'Class (This).getTotal;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotal;

end org.allbinary.business.installer.Portion_Package;


