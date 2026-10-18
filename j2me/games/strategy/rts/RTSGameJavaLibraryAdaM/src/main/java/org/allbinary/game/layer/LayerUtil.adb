-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;

package body org.allbinary.game.layer.LayerUtil_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   procedure Initialize_Fields (This : in out LayerUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerUtil_Access is
      This : constant LayerUtil_Access := new LayerUtil;
   begin
      LayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function toString (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return Unbounded_String is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (LayerUtil_Package.HASHTABLE);
        stringBuffer.append (StringUtil_Package.getInstance.toString (hashtable));
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.X_LABEL);
        stringBuffer.appendint (x);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Y_LABEL);
        stringBuffer.appendint (y);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (positionStrings.Z_LABEL);
        stringBuffer.appendint (z);
        return stringBuffer.toString;
   end toString;

   procedure toString (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant Unbounded_String := toString (hashtable_Param, x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   HASHTABLE := To_Unbounded_String ("Hashtable: ");

end org.allbinary.game.layer.LayerUtil_Package;


