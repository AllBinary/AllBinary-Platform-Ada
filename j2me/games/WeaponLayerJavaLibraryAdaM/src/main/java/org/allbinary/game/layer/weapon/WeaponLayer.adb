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


package body org.allbinary.game.layer.weapon.WeaponLayer_Package is

   procedure Initialize_Fields (This : in out WeaponLayer'Class) is
   begin
      null;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      
      
      This.sourceLayerInterface := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
      This.totalDamage := 0;
      This.initDamage := 0;
      This.destroyed := True;
      This.scoreableInterface := NoScoreable_Package.getInstance;
      
      This.weaponProperties := WeaponProperties_Package.NULL_WEAPON_PROPERTIES;
      
      This.collidableWeaponBehavior := CollidableWeaponBehavior_Package.getNullInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out WeaponLayer'Class; name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) is
   begin
        MultiPlayerGameLayer_Package.Initialize (This, remoteInfo, BasicGroupFactory_Package.getInstance.NONE_ARRAY, name, rectangle, viewPosition);
        Initialize_Fields (This);
        This.initAnimationInterface := animationInterface;
        This.setAnimationInterface (animationInterface);
        This.destroyedAnimationInterface := destroyedAnimationInterface;
        This.movement := movement;
        This.multiPlayerType := multiPlayerType;
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) return WeaponLayer_Access is
      This : constant WeaponLayer_Access := new WeaponLayer;
   begin
      WeaponLayer_Package.Initialize (This.all, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
      return This;
   end Create;

   procedure setCollidableInferface (This : in out WeaponLayer; collidableInferface : CollidableBaseBehavior_Access) is
   begin
        MultiPlayerGameLayer (This).setCollidableInferface (collidableInferface);
        This.collidableWeaponBehavior := CollidableWeaponBehavior_Access (This.getCollidableInferface);
   end setCollidableInferface;

   --  throws Exception
   procedure initXYZ (This : in out WeaponLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.x := x;
        This.y := y;
        This.z := z;
   end initXYZ;

   --  throws Exception
   procedure init (This : in out WeaponLayer; sourceLayerInterface : AllBinaryLayer_Access; angle : Integer; otherAngle : Integer; weaponProperties : WeaponProperties_Access; scoreable : ScoreableInterface_Access) is
   begin
        This.setWeaponPropertiesP (weaponProperties);
        This.setReadyForExplosion (False);
        This.setAnimationInterface (This.getInitAnimationInterfaceP);
        This.setOwnerLayerInterface (sourceLayerInterface);
        This.collidableWeaponBehavior.init (sourceLayerInterface);
        This.setGroupInterfaces;
        if (scoreable) /= (null) then
            This.scoreableInterface := scoreable;
        end if;
        This.totalDamage := 0;
        This.initDamage := weaponProperties.getDamage;
        This.setDestroyed (False);
        This.movement.init (weaponProperties.getSpeed, angle, otherAngle);
   end init;

   procedure setGroupInterfaces (This : in out WeaponLayer) is
      basicGroupFactory : BasicGroupFactory_Access;
   begin
        basicGroupFactory := BasicGroupFactory_Package.getInstance;
        if (This.sourceLayerInterface.getGroupInterface (0)) = (basicGroupFactory.ENEMY) then
            This.setGroupInterface (basicGroupFactory.ENEMY_ARRAY);
        else
            This.setGroupInterface (This.sourceLayerInterface.getGroupInterface);
        end if;
   end setGroupInterfaces;

   --  throws Exception
   procedure processTick (This : in out WeaponLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      collidableWeaponBehavior : CollidableWeaponBehavior_Access;
      indexedAnimationInterface : IndexedAnimation_Access;
      currentFrame : Integer;
   begin
        if (This.isExhausted) and then (not (This.isDestroyed)) then
            if This.isReadyForExplosion then
                indexedAnimationInterface := IndexedAnimation_Access (This.getAnimationInterface);
                currentFrame := indexedAnimationInterface.getFrame;
                if (currentFrame) < ((indexedAnimationInterface.getAnimationSize) - (1)) then
                    indexedAnimationInterface.nextFrame;
                else
                    This.setDestroyed (True);
                end if;
            else
                collidableWeaponBehavior := CollidableWeaponBehavior_Access (This.getCollidableInferface);
                if collidableWeaponBehavior.isCollided then
                    This.setAnimationInterface (This.destroyedAnimationInterface);
                    This.getMovement.stop;
                    This.setReadyForExplosion (True);
                else
                    This.setDestroyed (True);
                end if;
            end if;
        end if;
        This.movement.process (This'Unchecked_Access);
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
        if ((This.totalDamage) > (This.getInitDamage)) or else ((This.totalDamage) < (0)) then
            return True;
        else
            return False;
        end if;
   end isExhausted;

   function getDamage (This : in out WeaponLayer; damageType : Integer) return Integer is
      total : Integer;
   begin
        if not (This.isExhausted) then
            total := (This.getInitDamage) - (This.totalDamage);
            This.givePoints (total);
            return total;
        end if;
        return 0;
   end getDamage;

   procedure setDestroyed (This : in out WeaponLayer; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if This.isDestroyed then
            This.scoreableInterface := NoScoreable_Package.getInstance;
            DestroyedLayerProcessor_Package.getInstance.add (This'Unchecked_Access);
        end if;
   end setDestroyed;

   function getInitDamage (This : in out WeaponLayer) return Integer is
   begin
        return This.initDamage;
   end getInitDamage;

   procedure setAnimationInterface (This : in out WeaponLayer; animationInterface : Animation_Access) is
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

   procedure setInitAnimationInterfaceP (This : in out WeaponLayer; initAnimationInterface : Animation_Access) is
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

   procedure setOwnerLayerInterface (This : in out WeaponLayer; sourceLayerInterface : AllBinaryLayer_Access) is
   begin
        This.sourceLayerInterface := sourceLayerInterface;
   end setOwnerLayerInterface;

   procedure paint (This : in out WeaponLayer; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
   begin
        viewPosition := This.getViewPosition;
        This.animationInterface.paintXY (graphics, (viewPosition.getX) - (This.getHalfWidth), (viewPosition.getY) - (This.getHalfHeight));
   end paint;

   procedure paintThreed (This : in out WeaponLayer; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
   begin
        viewPosition := This.getViewPosition;
        This.animationInterface.paintThreedXYZ (graphics, (viewPosition.getX) - (This.getHalfWidth), (viewPosition.getY) - (This.getHalfHeight), (viewPosition.getZ) - (This.getHalfDepth));
   end paintThreed;

   function getMovement (This : in out WeaponLayer) return Movement_Access is
   begin
        return This.movement;
   end getMovement;

   procedure setMovement (This : in out WeaponLayer; movement : Movement_Access) is
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

   procedure setWeaponPropertiesP (This : in out WeaponLayer; weaponProperties : WeaponProperties_Access) is
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
   procedure set (This : in out WeaponLayer; gl : GL_Access) is
   begin
        This.initAnimationInterface.set (gl);
   end set;

   procedure getDamage (This : in out WeaponLayer; damageType : Integer) is
      Java_Result : constant Integer := WeaponLayer'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

end org.allbinary.game.layer.weapon.WeaponLayer_Package;


