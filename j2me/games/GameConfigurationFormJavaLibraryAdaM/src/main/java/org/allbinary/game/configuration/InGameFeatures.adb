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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
with org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
with org.allbinary.game.configuration.feature.SensorFeatureFactory_Package; use org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
with org.allbinary.game.configuration.feature.TouchFeatureFactory_Package; use org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
with org.allbinary.input.gyro.OrientationData_Package; use org.allbinary.input.gyro.OrientationData_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.configuration.InGameFeatures_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureChoiceGroups_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
   package InGameFeatureChoiceGroups_Package renames Standard.org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups_Package;
   package SensorFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.SensorFeatureFactory_Package;
   package TouchFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.TouchFeatureFactory_Package;
   package OrientationData_Package renames Standard.org.allbinary.input.gyro.OrientationData_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out InGameFeatures'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InGameFeatures'Class) is
   begin
      Init_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return InGameFeatures_Access is
      This : constant InGameFeatures_Access := new InGameFeatures;
   begin
      InGameFeatures_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out InGameFeatures) is
      LABEL : Unbounded_String;
      orientationData : OrientationData_Access;
      exclusiveOrientationSensorVector : BasicArrayList_Access;
      inGameFeatureChoiceGroups : InGameFeatureChoiceGroups_Access;
      inGameExclusiveOrientationSensorVectorCanBeNull : Java_Object_Access;
      inGameExclusiveOrientationSensorVector : BasicArrayList_Access;
      features : Features_Access;
      exclusiveScreenButtonsVector : BasicArrayList_Access;
      touchFeatureFactory : TouchFeatureFactory_Access;
   begin
        LABEL := To_Unbounded_String ("Screen Buttons");
        orientationData := OrientationData_Package.getInstance;
        exclusiveOrientationSensorVector := BasicArrayList_Access (GameFeatureChoiceGroups_Package.getExclusiveInstance.get.get (Java_Object_Access (orientationData.ORIENTATION_SENSOR_INPUT)));
        inGameFeatureChoiceGroups := InGameFeatureChoiceGroups_Package.getExclusiveInstance;
        if (exclusiveOrientationSensorVector) /= (null) then
            inGameExclusiveOrientationSensorVectorCanBeNull := inGameFeatureChoiceGroups.get.get (Java_Object_Access (orientationData.ORIENTATION_SENSOR_INPUT));
            if (inGameExclusiveOrientationSensorVectorCanBeNull) = (null) then
                InGameFeatures'Class (This).addToInGameMenu;
            else
                inGameExclusiveOrientationSensorVector := BasicArrayList_Access (inGameExclusiveOrientationSensorVectorCanBeNull);
                if (inGameExclusiveOrientationSensorVector.size) = (0) then
                    InGameFeatures'Class (This).addToInGameMenu;
                end if;
            end if;
        end if;
        features := Features_Package.getInstance;
        if ((features.isFeature (TouchFeatureFactory_Package.getInstance.SHOW_SCREEN_BUTTONS)) or else (features.isFeature (TouchFeatureFactory_Package.getInstance.AUTO_HIDE_SHOW_SCREEN_BUTTONS))) or else (features.isFeature (TouchFeatureFactory_Package.getInstance.HIDE_SCREEN_BUTTONS)) then
            exclusiveScreenButtonsVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            touchFeatureFactory := TouchFeatureFactory_Package.getInstance;
            exclusiveScreenButtonsVector.add (touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add (touchFeatureFactory.SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add (touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            inGameFeatureChoiceGroups.add (LABEL, exclusiveScreenButtonsVector);
        end if;
   end init;

   procedure addToInGameMenu (This : in out InGameFeatures) is
      orientationData : OrientationData_Access;
      inGameExclusiveOrientationSensorVector : BasicArrayList_Access;
   begin
        orientationData := OrientationData_Package.getInstance;
        inGameExclusiveOrientationSensorVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        inGameExclusiveOrientationSensorVector.add (SensorFeatureFactory_Package.getInstance.ORIENTATION_SENSORS);
        inGameExclusiveOrientationSensorVector.add (SensorFeatureFactory_Package.getInstance.NO_ORIENTATION);
        InGameFeatureChoiceGroups_Package.getExclusiveInstance.add (orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector);
   end addToInGameMenu;

   function isAny (This : in out InGameFeatures) return Boolean is
      features : Features_Access;
      touchFeatureFactory : TouchFeatureFactory_Access;
      exclusiveOrientationSensorVector : BasicArrayList_Access;
   begin
        features := Features_Package.getInstance;
        touchFeatureFactory := TouchFeatureFactory_Package.getInstance;
        if ((features.isFeature (touchFeatureFactory.SHOW_SCREEN_BUTTONS)) or else (features.isFeature (touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS))) or else (features.isFeature (touchFeatureFactory.HIDE_SCREEN_BUTTONS)) then
            return True;
        end if;
        exclusiveOrientationSensorVector := BasicArrayList_Access (GameFeatureChoiceGroups_Package.getExclusiveInstance.get.get (Java_Object_Access (OrientationData_Package.getInstance.ORIENTATION_SENSOR_INPUT)));
        if (exclusiveOrientationSensorVector) /= (null) then
            return True;
        end if;
        return False;
   end isAny;

end org.allbinary.game.configuration.InGameFeatures_Package;


