-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.util.ABStack_Package is

   procedure Initialize_Fields (This : in out ABStack'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABStack'Class) is
   begin
      Stack_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ABStack_Access is
      This : constant ABStack_Access := new ABStack;
   begin
      ABStack_Package.Initialize (This.all);
      return This;
   end Create;


   function push (This : in out ABStack; item : Java_Object_Access) return Java_Object_Access is
   begin
        return Stack (This).push (item);
   end push;

   function pop (This : in out ABStack) return Java_Object_Access is
   begin
        return Stack (This).pop;
   end pop;

   function peek (This : in out ABStack) return Java_Object_Access is
   begin
        return Stack (This).peek;
   end peek;

   function empty (This : in out ABStack) return Boolean is
   begin
        return Stack (This).empty;
   end empty;

   function search (This : in out ABStack; obj : Java_Object_Access) return Integer is
   begin
        return Stack (This).search (obj);
   end search;

   function removeElement (This : in out ABStack; obj : Java_Object_Access) return Boolean is
   begin
        return Stack (This).removeElement (obj);
   end removeElement;

   procedure push (This : in out ABStack; item : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := ABStack'Class (This).push (item);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end push;

   procedure search (This : in out ABStack; obj : Java_Object_Access) is
      Java_Result : constant Integer := ABStack'Class (This).search (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end search;

   procedure removeElement (This : in out ABStack; obj : Java_Object_Access) is
      Java_Result : constant Boolean := ABStack'Class (This).removeElement (obj);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end removeElement;

end org.allbinary.util.ABStack_Package;


