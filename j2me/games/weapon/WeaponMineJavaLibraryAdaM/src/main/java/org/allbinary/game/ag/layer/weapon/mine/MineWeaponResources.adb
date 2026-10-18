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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out MineWeaponResources'Class) is
   begin
      null;
      This.DROP_TEXT_RESOURCE := To_Unbounded_String ("/mine_drop_text_20_by_20.png");
      This.DROP_RESOURCE := To_Unbounded_String ("/mine_drop_20_by_20.png");
      This.DROP_ICON_RESOURCE := To_Unbounded_String ("/mine_drop_icon_20_by_20.png");
   end Initialize_Fields;


   function getInstance return MineWeaponResources_Access is
   begin
        if (MineWeaponResources_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            MineWeaponResources_Package.instance := MineWeaponResources_Package.Create;
        end if;
        return MineWeaponResources_Access (MineWeaponResources_Package.instance);
   end getInstance;

   procedure Initialize (This : in out MineWeaponResources'Class) is
      ROOT : Unbounded_String;
      SMALL : Unbounded_String;
      MEDIUM : Unbounded_String;
      SIZE_FOUR : Unbounded_String;
      SIZE_FIVE : Unbounded_String;
      SIZE_SIX : Unbounded_String;
      SIZE : Unbounded_String_Array_Access;
   begin
      BasicGameResources_Package.Initialize (This);
      Initialize_Fields (This);
        ROOT := To_Unbounded_String ("/mine");
        SMALL := To_Unbounded_String ("_20_by_20.png");
        MEDIUM := SMALL;
        SIZE_FOUR := SMALL;
        SIZE_FIVE := SMALL;
        SIZE_SIX := SMALL;
        SIZE := new Unbounded_String_Array'(SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX);
        BasicGameResources (This).init (ROOT, SIZE);
   end Initialize;

   function Create return MineWeaponResources_Access is
      This : constant MineWeaponResources_Access := new MineWeaponResources;
   begin
      MineWeaponResources_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package;


