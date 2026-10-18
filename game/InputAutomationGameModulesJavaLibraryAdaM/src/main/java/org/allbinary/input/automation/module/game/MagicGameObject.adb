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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.input.automation.module.game.MagicGameObject_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out MagicGameObject'Class) is
   begin
      null;
      This.MP_LABEL := To_Unbounded_String ("MP:");
   end Initialize_Fields;


   procedure Initialize (This : in out MagicGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) is
   begin
        MeteredGameObject_Package.Initialize (This, bufferedImage, minX, maxX, y);
        Initialize_Fields (This);
   end Initialize;

   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return MagicGameObject_Access is
      This : constant MagicGameObject_Access := new MagicGameObject;
   begin
      MagicGameObject_Package.Initialize (This.all, bufferedImage, minX, maxX, y);
      return This;
   end Create;

   function toString (This : in out MagicGameObject) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        stringBuffer.append (This.MP_LABEL);
        stringBuffer.append (MeteredGameObject (This).toString);
        return stringBuffer.toString;
   end toString;

end org.allbinary.input.automation.module.game.MagicGameObject_Package;


