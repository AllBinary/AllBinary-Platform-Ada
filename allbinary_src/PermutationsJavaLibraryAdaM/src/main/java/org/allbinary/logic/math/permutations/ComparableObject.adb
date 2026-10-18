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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;

package body org.allbinary.logic.math.permutations.ComparableObject_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   procedure Initialize_Fields (This : in out ComparableObject'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ComparableObject'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ComparableObject_Access is
      This : constant ComparableObject_Access := new ComparableObject;
   begin
      ComparableObject_Package.Initialize (This.all);
      return This;
   end Create;


   function compareTo (This : in out ComparableObject; anyType_Param : access Java_Object'Class) return Integer is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        if (TsUtil_Package.getInstance.hashCode (ComparableObject_Access'(This'Unchecked_Access))) < (TsUtil_Package.getInstance.hashCode (anyType)) then
            return -(1);
        elsif (TsUtil_Package.getInstance.hashCode (ComparableObject_Access'(This'Unchecked_Access))) > (TsUtil_Package.getInstance.hashCode (anyType)) then
            return 1;
        end if;
        return 0;
   end compareTo;

   procedure compareTo (This : in out ComparableObject; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Integer := ComparableObject'Class (This).compareTo (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   function compareTo (This : in out ComparableObject; Value : Unbounded_String) return Integer is
   begin
      return ComparableObject'Class (This).compareTo (Java_Box (Value));
   end compareTo;

   procedure compareTo (This : in out ComparableObject; Value : Unbounded_String) is
      Java_Result : constant Integer := ComparableObject'Class (This).compareTo (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.allbinary.logic.math.permutations.ComparableObject_Package;


