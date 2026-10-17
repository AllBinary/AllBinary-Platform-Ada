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


package body org.allbinary.game.combat.damage.DamageUtil_Package is

   procedure Initialize_Fields (This : in out DamageUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.COLLIDE := To_Unbounded_String ("collide");
   end Initialize_Fields;


   function getInstance return DamageUtil_Access is
   begin
        return DamageUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DamageUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DamageUtil_Access is
      This : constant DamageUtil_Access := new DamageUtil;
   begin
      DamageUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out DamageUtil; damageableInterface_Param : access DamageableInterface_Package.DamageableInterface'Class; damageableInterface2_Param : access DamageableInterface_Package.DamageableInterface'Class) is
      damageableInterface : constant DamageableInterface_Access := DamageableInterface_Access (damageableInterface_Param);
      damageableInterface2 : constant DamageableInterface_Access := DamageableInterface_Access (damageableInterface2_Param);
   begin
        damageableInterface.damage (damageableInterface2.getDamage (0), 0);
   end process;

   --  throws Exception
   procedure debugDamage (This : in out DamageUtil; collidableInterfaceCompositeInterface1_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      collidableInterfaceCompositeInterface1 : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface1_Param);
      collidableInterfaceCompositeInterface : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (collidableInterfaceCompositeInterface_Param);
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      damage : Integer;
      stringBuffer : StringMaker_Access;
   begin
        collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (collidableInterfaceCompositeInterface);
        damage := collidableDestroyableDamageableLayer.getDamage (0);
        if (damage) > (20000) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Collision "));
            stringBuffer.append (collidableInterfaceCompositeInterface1.toString);
            stringBuffer.append (To_Unbounded_String (" with: "));
            stringBuffer.append (collidableInterfaceCompositeInterface.toString);
            stringBuffer.append (To_Unbounded_String (" damage: "));
            stringBuffer.appendint (damage);
            This.logUtil.putF (stringBuffer.toString, collidableInterfaceCompositeInterface1, This.COLLIDE);
        end if;
   end debugDamage;

begin
   null;
   instance := DamageUtil_Package.Create;

end org.allbinary.game.combat.damage.DamageUtil_Package;


