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



package body org.allbinary.util.ABCharacter_Package is

   procedure Initialize_Fields (This : in out ABCharacter'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABCharacter'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABCharacter_Access is
      This : constant ABCharacter_Access := new ABCharacter;
   begin
      ABCharacter_Package.Initialize (This.all);
      return This;
   end Create;


   function toString (ch : Character) return Unbounded_String is
   begin
        return To_Unbounded_String (Java_Image (ch));
   end toString;

   procedure toString (ch : Character) is
      Java_Result : constant Unbounded_String := toString (ch => ch);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.util.ABCharacter_Package;


