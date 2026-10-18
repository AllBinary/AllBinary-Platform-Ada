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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.math.MathData_Package; use org.allbinary.logic.math.MathData_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.logic.string_Id.SpecialCharacterUtil_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package MathData_Package renames Standard.org.allbinary.logic.math.MathData_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out SpecialCharacterUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SpecialCharacterUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpecialCharacterUtil_Access is
      This : constant SpecialCharacterUtil_Access := new SpecialCharacterUtil;
   begin
      SpecialCharacterUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getHashMap return HashMap_Access is
      commonSeps : CommonSeps_Access;
      commonPhoneStrings : CommonPhoneStrings_Access;
      stringUtil : StringUtil_Access;
      hashMap : HashMap_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
        stringUtil := StringUtil_Package.getInstance;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (Java_Box (To_Unbounded_String ("!")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("@")), stringUtil.EMPTY_STRING);
        hashMap.put (commonPhoneStrings.POUND, stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("$")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("%")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("^")), stringUtil.EMPTY_STRING);
        hashMap.put (commonSeps.AMPERSAND, stringUtil.EMPTY_STRING);
        hashMap.put (commonPhoneStrings.STAR, stringUtil.EMPTY_STRING);
        hashMap.put (commonSeps.PARENTHESIS_OPEN, stringUtil.EMPTY_STRING);
        hashMap.put (commonSeps.PARENTHESIS_CLOSE, stringUtil.EMPTY_STRING);
        hashMap.put (commonSeps.DASH, stringUtil.EMPTY_STRING);
        hashMap.put (commonSeps.UNDERSCORE, stringUtil.EMPTY_STRING);
        hashMap.put (MathData_Package.getInstance.PLUS, stringUtil.EMPTY_STRING);
        hashMap.put (commonSeps.EQUALS, stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("\")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("|")), stringUtil.EMPTY_STRING);
        hashMap.put (AbPathData_Package.getInstance.EXTENSION_SEP, stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String (",")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("<")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String (">")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("?")), stringUtil.EMPTY_STRING);
        hashMap.put (AbPathData_Package.getInstance.SEPARATOR, stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("~")), stringUtil.EMPTY_STRING);
        hashMap.put (Java_Box (To_Unbounded_String ("`")), stringUtil.EMPTY_STRING);
        return hashMap;
   end getHashMap;

end org.allbinary.logic.string_Id.SpecialCharacterUtil_Package;


