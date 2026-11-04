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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillType_Package; use org.allbinary.input.automation.module.game.skill.GameSkillType_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References;
with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package; use org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References;
with org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package;
with org.allbinary.input.automation.module.game.skill.GameSkillType_Package;

package body org.allbinary.input.automation.module.game.skill.GameSkill_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype GameSkillType_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access;
   function "=" (Left, Right : GameSkillType_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillType_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array;
   function "=" (Left, Right : GameSkillType_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillType_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access;
   function "=" (Left, Right : GameSkillType_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillType_Access_Array_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access_Array;
   function "=" (Left, Right : GameSkillType_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillType_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References.GameSkillType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameSkillType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillType_Package_References."=";
   subtype GameSkillPropertyInterface_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access;
   function "=" (Left, Right : GameSkillPropertyInterface_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   subtype GameSkillPropertyInterface_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   subtype GameSkillPropertyInterface_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   subtype GameSkillPropertyInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   subtype GameSkillPropertyInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References.GameSkillPropertyInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameSkillPropertyInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.game.skill.GameSkillPropertyInterface_Package_References."=";
   procedure Initialize_Fields (This : in out GameSkill'Class) is
   begin
      null;
      This.gameSkillType := null;
      This.extra := Null_Unbounded_String;
      This.time := 0;
      
      This.GAME_SKILL_LABEL := To_Unbounded_String ("GameSkill: ");
      This.EXTRA_LABEL := To_Unbounded_String ("Extra: ");
      This.TIME_LABEL := To_Unbounded_String ("Time: ");
   end Initialize_Fields;


   procedure Initialize (This : in out GameSkill'Class; gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String; time : Integer) is
      gameSkillType : constant GameSkillType_Access := GameSkillType_Access (gameSkillType_Param);
   begin
      Initialize_Fields (This);
        GameSkill'Class (This).setGameSkillType (gameSkillType);
        GameSkill'Class (This).setExtra (extra);
        GameSkill'Class (This).setTime (time);
        This.vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        GameSkill_Package.hashMap.put (Java_Box (StringMaker_Package.Create.append (GameSkill'Class (This).getGameSkillType.getName).append (CommonSeps_Package.getInstance.SPACE).append (extra).toString), GameSkill_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String; time : Integer) return GameSkill_Access is
      This : constant GameSkill_Access := new GameSkill;
   begin
      GameSkill_Package.Initialize (This.all, gameSkillType_Param, extra, time);
      return This;
   end Create;

   function getGameSkillType (This : in out GameSkill) return GameSkillType_Access is
   begin
        return This.gameSkillType;
   end getGameSkillType;

   procedure setGameSkillType (This : in out GameSkill; gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class) is
      gameSkillType : constant GameSkillType_Access := GameSkillType_Access (gameSkillType_Param);
   begin
        This.gameSkillType := gameSkillType;
   end setGameSkillType;

   function getExtra (This : in out GameSkill) return Unbounded_String is
   begin
        return This.extra;
   end getExtra;

   procedure setExtra (This : in out GameSkill; extra : Unbounded_String) is
   begin
        This.extra := extra;
   end setExtra;

   function getTime (This : in out GameSkill) return Integer is
   begin
        return This.time;
   end getTime;

   procedure setTime (This : in out GameSkill; time : Integer) is
   begin
        This.time := time;
   end setTime;

   procedure addProperty (This : in out GameSkill; gameSkillPropertyInterface_Param : access GameSkillPropertyInterface_Package.GameSkillPropertyInterface'Class) is
      gameSkillPropertyInterface : constant GameSkillPropertyInterface_Access := GameSkillPropertyInterface_Access (gameSkillPropertyInterface_Param);
   begin
        This.vector.add (GameSkillPropertyInterface_Package.Java_Object_Access_From_GameSkillPropertyInterface (gameSkillPropertyInterface));
   end addProperty;

   function getProperties (This : in out GameSkill) return BasicArrayList_Access is
   begin
        return This.vector;
   end getProperties;

   function getInstance (gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String) return GameSkill_Access is
      gameSkillType : constant GameSkillType_Access := GameSkillType_Access (gameSkillType_Param);
   begin
        return GameSkill_Access (GameSkill_Package.hashMap.get (Java_Box (StringMaker_Package.Create.append (gameSkillType.getName).append (CommonSeps_Package.getInstance.SPACE).append (extra).toString)));
   end getInstance;

   function toString (This : in out GameSkill) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.GAME_SKILL_LABEL);
        stringBuffer.append (GameSkill'Class (This).getGameSkillType.toString);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (This.EXTRA_LABEL);
        stringBuffer.append (GameSkill'Class (This).getExtra);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (This.TIME_LABEL);
        stringBuffer.appendlong (Long_Long_Integer (GameSkill'Class (This).getTime));
        return stringBuffer.toString;
   end toString;

   procedure getInstance (gameSkillType_Param : access GameSkillType_Package.GameSkillType'Class; extra : Unbounded_String) is
      Java_Result : constant GameSkill_Access := getInstance (gameSkillType_Param => gameSkillType_Param, extra => extra);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashMap := StdUtil_Package.getInstance.createHashMap;

end org.allbinary.input.automation.module.game.skill.GameSkill_Package;


