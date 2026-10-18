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


with org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package; use org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package;

package body org.allbinary.android.input.motion.AnalogControllerHelper_Package is

   procedure Initialize_Fields (This : in out AnalogControllerHelper'Class) is
   begin
      null;
      
      This.SCALE_VALUE := AnalogControllerConfigurationFactory_Package.getInstance.SCALE_VALUE;
      This.rightTimeElapsedHelper := TimeDelayHelper_Package.Create (0);
      This.leftTimeElapsedHelper := TimeDelayHelper_Package.Create (0);
      This.downTimeElapsedHelper := TimeDelayHelper_Package.Create (0);
      This.upTimeElapsedHelper := TimeDelayHelper_Package.Create (0);
   end Initialize_Fields;


   procedure Initialize (This : in out AnalogControllerHelper'Class; reduceTimeFactor : Integer) is
   begin
      Initialize_Fields (This);
        This.reduceTimeFactor := reduceTimeFactor;
   end Initialize;

   function Create (reduceTimeFactor : Integer) return AnalogControllerHelper_Access is
      This : constant AnalogControllerHelper_Access := new AnalogControllerHelper;
   begin
      AnalogControllerHelper_Package.Initialize (This.all, reduceTimeFactor);
      return This;
   end Create;

   --  throws Exception
   procedure right (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        This.rightTimeElapsedHelper.delay_Id := (Java_Shift_Right_Arithmetic (((This.SCALE_VALUE) - (xAnalogValue)), This.reduceTimeFactor));
        if This.rightTimeElapsedHelper.isTimeTNT then
            collidableDestroyableDamageableLayer.right;
        end if;
   end right;

   --  throws Exception
   procedure left (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        This.leftTimeElapsedHelper.delay_Id := (Java_Shift_Right_Arithmetic (((This.SCALE_VALUE) + (xAnalogValue)), This.reduceTimeFactor));
        if This.leftTimeElapsedHelper.isTimeTNT then
            collidableDestroyableDamageableLayer.left;
        end if;
   end left;

   --  throws Exception
   procedure up (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        This.upTimeElapsedHelper.delay_Id := (Java_Shift_Right_Arithmetic (((This.SCALE_VALUE) - (xAnalogValue)), This.reduceTimeFactor));
        if This.upTimeElapsedHelper.isTimeTNT then
            collidableDestroyableDamageableLayer.up;
        end if;
   end up;

   --  throws Exception
   procedure down (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        This.downTimeElapsedHelper.delay_Id := (Java_Shift_Right_Arithmetic (((This.SCALE_VALUE) + (xAnalogValue)), This.reduceTimeFactor));
        if This.downTimeElapsedHelper.isTimeTNT then
            collidableDestroyableDamageableLayer.down;
        end if;
   end down;

end org.allbinary.android.input.motion.AnalogControllerHelper_Package;


