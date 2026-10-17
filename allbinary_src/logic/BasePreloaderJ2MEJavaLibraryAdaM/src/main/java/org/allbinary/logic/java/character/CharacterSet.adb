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


package body org.allbinary.logic.java.character_Id.CharacterSet_Package is

   procedure Initialize_Fields (This : in out CharacterSet'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CharacterSet'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CharacterSet_Access is
      This : constant CharacterSet_Access := new CharacterSet;
   begin
      CharacterSet_Package.Initialize (This.all);
      return This;
   end Create;

   function toString (This : in out CharacterSet) return Unbounded_String is
   begin
        return To_Unbounded_String ("Default Character Set: Empty Implementation");
   end toString;

end org.allbinary.logic.java.character_Id.CharacterSet_Package;


