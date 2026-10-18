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

package body org.allbinary.input.automation.module.game.HitPointGameObject_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out HitPointGameObject'Class) is
   begin
      null;
      This.damaged := False;
      This.closeDeath := False;
      This.HP_LABEL := To_Unbounded_String ("HP: ");
      This.IS_DAMAGED_LABEL := To_Unbounded_String ("isDamaged: ");
      This.IS_CLOSE_DEATH_LABEL := To_Unbounded_String ("isCloseDeath: ");
   end Initialize_Fields;


   procedure Initialize (This : in out HitPointGameObject'Class; bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) is
   begin
        MeteredGameObject_Package.Initialize (This, bufferedImage, minX, maxX, y);
        Initialize_Fields (This);
        if (HitPointGameObject'Class (This).getRatios ((bufferedImage'Length) - (1)).doubleValue) < (1.0) then
            HitPointGameObject'Class (This).setDamaged (True);
        else
            HitPointGameObject'Class (This).setDamaged (False);
        end if;
        if (HitPointGameObject'Class (This).getRatios ((bufferedImage'Length) - (1)).doubleValue) > (0.25) then
            This.closeDeath := False;
        else
            This.closeDeath := True;
        end if;
   end Initialize;

   function Create (bufferedImage : BufferedImage_Access_Array_Access; minX : Integer; maxX : Integer; y : Integer) return HitPointGameObject_Access is
      This : constant HitPointGameObject_Access := new HitPointGameObject;
   begin
      HitPointGameObject_Package.Initialize (This.all, bufferedImage, minX, maxX, y);
      return This;
   end Create;

   function isMoreThan (This : in out HitPointGameObject; aFloat : Float) return Boolean is
   begin
        if (HitPointGameObject'Class (This).getRatios ((HitPointGameObject'Class (This).getRatios'Length) - (1)).doubleValue) > (aFloat) then
            return True;
        else
            return False;
        end if;
   end isMoreThan;

   function isCloseDeath (This : in out HitPointGameObject) return Boolean is
   begin
        return This.closeDeath;
   end isCloseDeath;

   procedure setCloseDeath (This : in out HitPointGameObject; closeDeath : Boolean) is
   begin
        This.closeDeath := closeDeath;
   end setCloseDeath;

   function isDamaged (This : in out HitPointGameObject) return Boolean is
   begin
        return This.damaged;
   end isDamaged;

   procedure setDamaged (This : in out HitPointGameObject; damaged : Boolean) is
   begin
        This.damaged := damaged;
   end setDamaged;

   function toString (This : in out HitPointGameObject) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.HP_LABEL);
        stringBuffer.append (MeteredGameObject (This).toString);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.IS_DAMAGED_LABEL);
        stringBuffer.appendboolean (HitPointGameObject'Class (This).isDamaged);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (This.IS_CLOSE_DEATH_LABEL);
        stringBuffer.appendboolean (HitPointGameObject'Class (This).isCloseDeath);
        return stringBuffer.toString;
   end toString;

   procedure isMoreThan (This : in out HitPointGameObject; aFloat : Float) is
      Java_Result : constant Boolean := HitPointGameObject'Class (This).isMoreThan (aFloat => aFloat);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isMoreThan;

end org.allbinary.input.automation.module.game.HitPointGameObject_Package;


