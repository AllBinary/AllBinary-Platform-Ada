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


package body org.allbinary.game.layer.LayerUtil_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function toString (hashtable_Case : ABHashtable_Access; x : Integer; y : Integer; z : Integer) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      positionStrings : PositionStrings_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        positionStrings := PositionStrings_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (LayerUtil_Package.HASHTABLE);
        stringBuffer.append (StringUtil_Package.getInstance.toString (hashtable_Case));
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

   procedure toString (hashtable_Case : ABHashtable_Access; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant Unbounded_String := toString (hashtable_Case, x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   HASHTABLE := To_Unbounded_String ("Hashtable: ");

end org.allbinary.game.layer.LayerUtil_Package;


