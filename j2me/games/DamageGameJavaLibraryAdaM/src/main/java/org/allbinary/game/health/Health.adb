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


package body org.allbinary.game.health.Health_Package is

   procedure Initialize_Fields (This : in out Health'Class) is
   begin
      null;
      This.health := 0;
      This.maxHealth := 0;
      This.healthListenerInterface := NullHealthListener_Package.NULL_HEALTH_LISTENER;
   end Initialize_Fields;


   procedure Initialize (This : in out Health'Class; maxHealth : Integer) is
   begin
      Initialize_Fields (This);
        This.setMaxHealth (maxHealth);
        This.setHealth (maxHealth);
   end Initialize;

   function Create (maxHealth : Integer) return Health_Access is
      This : constant Health_Access := new Health;
   begin
      Health_Package.Initialize (This.all, maxHealth);
      return This;
   end Create;

   procedure heal (This : in out Health; ahealth : Integer) is
      newHealth : Integer;
   begin
        newHealth := (This.getHealth) + (ahealth);
        if (newHealth) > (This.getMaxHealth) then
            This.setHealth (This.getMaxHealth);
        else
            This.setHealth (newHealth);
        end if;
   end heal;

   procedure healMax (This : in out Health) is
   begin
        This.setHealth (This.getMaxHealth);
   end healMax;

   function isDamaged (This : in out Health) return Boolean is
   begin
        if (This.getHealth) /= (This.getMaxHealth) then
            return True;
        else
            return False;
        end if;
   end isDamaged;

   procedure damage (This : in out Health; ahealth : Integer) is
      stringBuffer : StringMaker_Access;
      health : Integer;
   begin
        if (ahealth) < (0) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("******* Trying to heal when damaging. Damage: "));
            stringBuffer.appendint (ahealth);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            stringBuffer.append (This.toString);
            ForcedLogUtil_Package.log (stringBuffer.toString, Health_Access'(This'Unchecked_Access));
            return;
        end if;
        health := (This.getHealth) - (ahealth);
        This.setHealth (health);
   end damage;

   function isAlive (This : in out Health) return Boolean is
   begin
        if (This.getHealth) <= (0) then
            return False;
        else
            return True;
        end if;
   end isAlive;

   function getMaxHealth (This : in out Health) return Integer is
   begin
        return This.maxHealth;
   end getMaxHealth;

   procedure setMaxHealth (This : in out Health; maxHealth : Integer) is
   begin
        This.maxHealth := maxHealth;
   end setMaxHealth;

   procedure setHealth (This : in out Health; health : Integer) is
   begin
        if (health) > (This.getMaxHealth) then
            This.health := This.getMaxHealth;
        elsif (health) < (0) then
            This.health := 0;
        else
            This.health := health;
        end if;
        if (This.healthListenerInterface) /= (null) then
            This.healthListenerInterface.onHealthChange;
        end if;
   end setHealth;

   function getHealth (This : in out Health) return Integer is
   begin
        return This.health;
   end getHealth;

   procedure addListener (This : in out Health; healthGraphic_Param : access HealthListenerInterface'Class) is
      healthGraphic : HealthListenerInterface_Access := HealthListenerInterface_Access (healthGraphic_Param);
   begin
        This.healthListenerInterface := healthGraphic;
   end addListener;

   function toString (This : in out Health) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (Health_Package.HEALTH_LABEL);
        stringBuffer.appendint (This.health);
        stringBuffer.append (Health_Package.MAX_HEALTH_LABEL);
        stringBuffer.appendint (This.maxHealth);
        return stringBuffer.toString;
   end toString;

begin
   null;
   NULL_HEALTH := Health_Package.Create (0);
   NAME := To_Unbounded_String ("Health Resource");
   HEALTH_LABEL := To_Unbounded_String ("Health: ");
   MAX_HEALTH_LABEL := To_Unbounded_String (" Max: ");

end org.allbinary.game.health.Health_Package;


