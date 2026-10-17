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


package body org.allbinary.J2MEUtil_Package is

   procedure Initialize_Fields (This : in out J2MEUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out J2MEUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return J2MEUtil_Access is
      This : constant J2MEUtil_Access := new J2MEUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function isJ2ME return Boolean is
   begin
        return False;
   end isJ2ME;

   function isJ2SE return Boolean is
   begin
        return True;
   end isJ2SE;

   function isHTML return Boolean is
   begin
        return False;
   end isHTML;

   procedure isJ2ME is
      Java_Result : constant Boolean := isJ2ME;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isJ2ME;

   procedure isJ2SE is
      Java_Result : constant Boolean := isJ2SE;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isJ2SE;

   procedure isHTML is
      Java_Result : constant Boolean := isHTML;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isHTML;

end org.allbinary.J2MEUtil_Package;


