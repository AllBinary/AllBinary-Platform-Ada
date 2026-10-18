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


package body org.allbinary.input.automation.module.game.skill.GameSkillType_Package is

   procedure Initialize_Fields (This : in out GameSkillType'Class) is
   begin
      null;
      This.SPELL_GAME_SKILL_TYPE := To_Unbounded_String ("SpellGameSkillType: ");
      This.name := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out GameSkillType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        GameSkillType'Class (This).setName (name);
   end Initialize;

   function Create (name : Unbounded_String) return GameSkillType_Access is
      This : constant GameSkillType_Access := new GameSkillType;
   begin
      GameSkillType_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getName (This : in out GameSkillType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out GameSkillType; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function toString (This : in out GameSkillType) return Unbounded_String is
   begin
        return This.SPELL_GAME_SKILL_TYPE & GameSkillType'Class (This).getName;
   end toString;

begin
   null;
   MANA := GameSkillType_Package.Create (To_Unbounded_String ("Mana"));
   REPLENISH := GameSkillType_Package.Create (To_Unbounded_String ("Replenish"));
   TIMED := GameSkillType_Package.Create (To_Unbounded_String ("Timed"));
   ATTACK := GameSkillType_Package.Create (To_Unbounded_String ("Attack"));
   TRANSPORT := GameSkillType_Package.Create (To_Unbounded_String ("Transport"));

end org.allbinary.input.automation.module.game.skill.GameSkillType_Package;


