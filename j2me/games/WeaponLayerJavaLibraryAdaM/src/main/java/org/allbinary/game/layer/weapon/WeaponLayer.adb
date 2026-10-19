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


with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package; use org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.score.NoScoreable_Package; use org.allbinary.game.score.NoScoreable_Package;

package body org.allbinary.game.layer.weapon.WeaponLayer_Package is

   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package DestroyedLayerProcessor_Package renames Standard.org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package NoScoreable_Package renames Standard.org.allbinary.game.score.NoScoreable_Package;
   procedure Initialize_Fields (This : in out WeaponLayer'Class) is
   begin
      null;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      
      
      This.sourceLayerInterface := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
      This.totalDamage := 0;
      This.initDamage := 0;
      This.destroyed := True;
      This.scoreableInterface := ScoreableInterface_Access (NoScoreable_Package.getInstance);
      
      This.weaponProperties := WeaponProperties_Package.NULL_WEAPON_PROPERTIES;
      
      This.collidableWeaponBehavior := CollidableWeaponBehavior_Package.getNullInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out WeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      movement : constant Movement_Access := Movement_Access (movement_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      destroyedAnimationInterface : constant Animation_Access := Animation_Access (destroyedAnimationInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        MultiPlayerGameLayer_Package.Initialize (This, remoteInfo, BasicGroupFactory_Package.getInstance.NONE_ARRAY, name, rectangle, viewPosition);
        Initialize_Fields (This);
        This.initAnimationInterface := animationInterface;
        WeaponLayer'Class (This).setAnimationInterface (animationInterface);
        This.destroyedAnimationInterface := destroyedAnimationInterface;
        This.movement := movement;
        This.multiPlayerType := multiPlayerType;
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return WeaponLayer_Access is
      This : constant WeaponLayer_Access := new WeaponLayer;
   begin
      WeaponLayer_Package.Initialize (This.all, name, remoteInfo_Param, multiPlayerType, movement_Param, animationInterface_Param, destroyedAnimationInterface_Param, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

   procedure setCollidableInferface (This : in out WeaponLayer; collidableInferface_Param : access CollidableBaseBehavior_Package.CollidableBaseBehavior'Class) is
      collidableInferface : constant CollidableBaseBehavior_Access := CollidableBaseBehavior_Access (collidableInferface_Param);
   begin
        MultiPlayerGameLayer (This).setCollidableInferface (collidableInferface);
        This.collidableWeaponBehavior := CollidableWeaponBehavior_Access (WeaponLayer'Class (This).getCollidableInferface);
   end setCollidableInferface;

   --  throws Exception
   procedure initXYZ (This : in out WeaponLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.x := x;
        This.y := y;
        This.z := z;
   end initXYZ;

   --  throws Exception
   procedure init (This : in out WeaponLayer; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreable : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreable_Param);
   begin
        WeaponLayer'Class (This).setWeaponPropertiesP (weaponProperties);
        WeaponLayer'Class (This).setReadyForExplosion (False);
        WeaponLayer'Class (This).setAnimationInterface (WeaponLayer'Class (This).getInitAnimationInterfaceP);
        WeaponLayer'Class (This).setOwnerLayerInterface (sourceLayerInterface);
        This.collidableWeaponBehavior.init (sourceLayerInterface);
        WeaponLayer'Class (This).setGroupInterfaces;
        if (scoreable) /= (null) then
            This.scoreableInterface := scoreable;
        end if;
        This.totalDamage := 0;
        This.initDamage := weaponProperties.getDamage;
        WeaponLayer'Class (This).setDestroyed (False);
        This.movement.init (weaponProperties.getSpeed, angle, otherAngle);
   end init;

   procedure setGroupInterfaces (This : in out WeaponLayer) is
      basicGroupFactory : BasicGroupFactory_Access;
   begin
        basicGroupFactory := BasicGroupFactory_Package.getInstance;
        if (This.sourceLayerInterface.getGroupInterface (0)) = (basicGroupFactory.ENEMY) then
            WeaponLayer'Class (This).setGroupInterface (basicGroupFactory.ENEMY_ARRAY);
        else
            WeaponLayer'Class (This).setGroupInterface (This.sourceLayerInterface.getGroupInterface);
        end if;
   end setGroupInterfaces;

   --  throws Exception
   procedure processTick (This : in out WeaponLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      collidableWeaponBehavior : CollidableWeaponBehavior_Access;
      indexedAnimationInterface : IndexedAnimation_Access;
      currentFrame : Integer;
   begin
        if (WeaponLayer'Class (This).isExhausted) and then (not (WeaponLayer'Class (This).isDestroyed)) then
            if WeaponLayer'Class (This).isReadyForExplosion then
                indexedAnimationInterface := IndexedAnimation_Access (WeaponLayer'Class (This).getAnimationInterface);
                currentFrame := indexedAnimationInterface.getFrame;
                if (currentFrame) < ((indexedAnimationInterface.getAnimationSize) - (1)) then
                    indexedAnimationInterface.nextFrame;
                else
                    WeaponLayer'Class (This).setDestroyed (True);
                end if;
            else
                collidableWeaponBehavior := CollidableWeaponBehavior_Access (WeaponLayer'Class (This).getCollidableInferface);
                if collidableWeaponBehavior.isCollided then
                    WeaponLayer'Class (This).setAnimationInterface (This.destroyedAnimationInterface);
                    WeaponLayer'Class (This).getMovement.stop;
                    WeaponLayer'Class (This).setReadyForExplosion (True);
                else
                    WeaponLayer'Class (This).setDestroyed (True);
                end if;
            end if;
        end if;
        This.movement.process (WeaponLayer_Access'(This'Unchecked_Access));
        This.totalDamage := (This.totalDamage) + (This.weaponProperties.getDissipation);
   end processTick;

   function isDestroyed (This : in out WeaponLayer) return Boolean is
   begin
        return This.destroyed;
   end isDestroyed;

   procedure damage (This : in out WeaponLayer; damage : Integer; damageType : Integer) is
   begin
        This.totalDamage := (This.totalDamage) + ((damage) * (damage));
   end damage;

   procedure givePoints (This : in out WeaponLayer; total : Integer) is
   begin
        This.scoreableInterface.addPoints ((GameConfigurationUtil_Package.getInstance.getCompetitionValue) * (total));
   end givePoints;

   function isExhausted (This : in out WeaponLayer) return Boolean is
   begin
        if ((This.totalDamage) > (WeaponLayer'Class (This).getInitDamage)) or else ((This.totalDamage) < (0)) then
            return True;
        else
            return False;
        end if;
   end isExhausted;

   function getDamage (This : in out WeaponLayer; damageType : Integer) return Integer is
      total : Integer;
   begin
        if not (WeaponLayer'Class (This).isExhausted) then
            total := (WeaponLayer'Class (This).getInitDamage) - (This.totalDamage);
            WeaponLayer'Class (This).givePoints (total);
            return total;
        end if;
        return 0;
   end getDamage;

   procedure setDestroyed (This : in out WeaponLayer; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if WeaponLayer'Class (This).isDestroyed then
            This.scoreableInterface := ScoreableInterface_Access (NoScoreable_Package.getInstance);
            DestroyedLayerProcessor_Package.getInstance.add (WeaponLayer_Access'(This'Unchecked_Access));
        end if;
   end setDestroyed;

   function getInitDamage (This : in out WeaponLayer) return Integer is
   begin
        return This.initDamage;
   end getInitDamage;

   procedure setAnimationInterface (This : in out WeaponLayer; animationInterface_Param : access Animation_Package.Animation'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        This.animationInterface := animationInterface;
   end setAnimationInterface;

   function getAnimationInterface (This : in out WeaponLayer) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   function getInitAnimationInterfaceP (This : in out WeaponLayer) return Animation_Access is
   begin
        return This.initAnimationInterface;
   end getInitAnimationInterfaceP;

   procedure setInitAnimationInterfaceP (This : in out WeaponLayer; initAnimationInterface_Param : access Animation_Package.Animation'Class) is
      initAnimationInterface : constant Animation_Access := Animation_Access (initAnimationInterface_Param);
   begin
        This.initAnimationInterface := initAnimationInterface;
   end setInitAnimationInterfaceP;

   function getDestroyedAnimationInterface (This : in out WeaponLayer) return Animation_Access is
   begin
        return This.destroyedAnimationInterface;
   end getDestroyedAnimationInterface;

   function getOwnerLayerInterface (This : in out WeaponLayer) return AllBinaryLayer_Access is
   begin
        return This.sourceLayerInterface;
   end getOwnerLayerInterface;

   procedure setOwnerLayerInterface (This : in out WeaponLayer; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
   begin
        This.sourceLayerInterface := sourceLayerInterface;
   end setOwnerLayerInterface;

   procedure paint (This : in out WeaponLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
   begin
        viewPosition := WeaponLayer'Class (This).getViewPosition;
        This.animationInterface.paintXY (graphics, (viewPosition.getX) - (WeaponLayer'Class (This).getHalfWidth), (viewPosition.getY) - (WeaponLayer'Class (This).getHalfHeight));
   end paint;

   procedure paintThreed (This : in out WeaponLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
   begin
        viewPosition := WeaponLayer'Class (This).getViewPosition;
        This.animationInterface.paintThreedXYZ (graphics, (viewPosition.getX) - (WeaponLayer'Class (This).getHalfWidth), (viewPosition.getY) - (WeaponLayer'Class (This).getHalfHeight), (viewPosition.getZ) - (WeaponLayer'Class (This).getHalfDepth));
   end paintThreed;

   function getMovement (This : in out WeaponLayer) return Movement_Access is
   begin
        return This.movement;
   end getMovement;

   procedure setMovement (This : in out WeaponLayer; movement_Param : access Movement_Package.Movement'Class) is
      movement : constant Movement_Access := Movement_Access (movement_Param);
   begin
        This.movement := movement;
   end setMovement;

   function getType (This : in out WeaponLayer) return Integer is
   begin
        return WeaponLayer_Package.getStaticType;
   end getType;

   function getStaticType return Integer is
   begin
        return 0;
   end getStaticType;

   function getMultiPlayerType (This : in out WeaponLayer) return Integer is
   begin
        return This.multiPlayerType;
   end getMultiPlayerType;

   procedure setWeaponPropertiesP (This : in out WeaponLayer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class) is
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
   begin
        This.weaponProperties := weaponProperties;
   end setWeaponPropertiesP;

   function getWeaponPropertiesP (This : in out WeaponLayer) return WeaponProperties_Access is
   begin
        return This.weaponProperties;
   end getWeaponPropertiesP;

   function implmentsTickableInterface (This : in out WeaponLayer) return Boolean is
   begin
        return True;
   end implmentsTickableInterface;

   --  throws Exception
   procedure set (This : in out WeaponLayer; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
   begin
        This.initAnimationInterface.set (gl);
   end set;

   procedure getDamage (This : in out WeaponLayer; damageType : Integer) is
      Java_Result : constant Integer := WeaponLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.weapon.WeaponLayer_Package;


