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


package body org.allbinary.input.automation.module.game.skill.GameSkill_Package is

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


   procedure Initialize (This : in out GameSkill'Class; gameSkillType : GameSkillType_Access; extra : Unbounded_String; time : Integer) is
   begin
      Initialize_Fields (This);
        This.setGameSkillType (gameSkillType);
        This.setExtra (extra);
        This.setTime (time);
        This.vector := BasicArrayListD_Package.Create;
        GameSkill_Package.hashMap.put (StringMaker_Package.Create.append (This.getGameSkillType.getName).append (CommonSeps_Package.getInstance.SPACE).append (extra).toString, This'Unchecked_Access);
   end Initialize;

   function Create (gameSkillType : GameSkillType_Access; extra : Unbounded_String; time : Integer) return GameSkill_Access is
      This : constant GameSkill_Access := new GameSkill;
   begin
      GameSkill_Package.Initialize (This.all, gameSkillType, extra, time);
      return This;
   end Create;

   function getGameSkillType (This : in out GameSkill) return GameSkillType_Access is
   begin
        return This.gameSkillType;
   end getGameSkillType;

   procedure setGameSkillType (This : in out GameSkill; gameSkillType : GameSkillType_Access) is
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

   procedure addProperty (This : in out GameSkill; gameSkillPropertyInterface : GameSkillPropertyInterface_Access) is
   begin
        This.vector.add (gameSkillPropertyInterface);
   end addProperty;

   function getProperties (This : in out GameSkill) return BasicArrayList_Access is
   begin
        return This.vector;
   end getProperties;

   function getInstance (gameSkillType : GameSkillType_Access; extra : Unbounded_String) return GameSkill_Access is
   begin
        return GameSkill_Access (GameSkill_Package.hashMap.get (StringMaker_Package.Create.append (gameSkillType.getName).append (CommonSeps_Package.getInstance.SPACE).append (extra).toString));
   end getInstance;

   function toString (This : in out GameSkill) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      stringBuffer : StringMaker_Access;
   begin
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.GAME_SKILL_LABEL);
        stringBuffer.append (This.getGameSkillType.toString);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (This.EXTRA_LABEL);
        stringBuffer.append (This.getExtra);
        stringBuffer.append (commonSeps.SPACE);
        stringBuffer.append (This.TIME_LABEL);
        stringBuffer.appendlong (Long_Long_Integer (This.getTime));
        return stringBuffer.toString;
   end toString;

   procedure getInstance (gameSkillType : GameSkillType_Access; extra : Unbounded_String) is
      Java_Result : constant GameSkill_Access := getInstance (gameSkillType, extra);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashMap := StdUtil_Package.getInstance.createHashMap;

end org.allbinary.input.automation.module.game.skill.GameSkill_Package;


