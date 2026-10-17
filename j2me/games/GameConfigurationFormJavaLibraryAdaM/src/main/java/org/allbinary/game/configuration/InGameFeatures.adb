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


package body org.allbinary.game.configuration.InGameFeatures_Package is

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
                This.addToInGameMenu;
            else
                inGameExclusiveOrientationSensorVector := BasicArrayList_Access (inGameExclusiveOrientationSensorVectorCanBeNull);
                if (inGameExclusiveOrientationSensorVector.size) = (0) then
                    This.addToInGameMenu;
                end if;
            end if;
        end if;
        features := Features_Package.getInstance;
        if ((features.isFeature (TouchFeatureFactory_Package.getInstance.SHOW_SCREEN_BUTTONS)) or else (features.isFeature (TouchFeatureFactory_Package.getInstance.AUTO_HIDE_SHOW_SCREEN_BUTTONS))) or else (features.isFeature (TouchFeatureFactory_Package.getInstance.HIDE_SCREEN_BUTTONS)) then
            exclusiveScreenButtonsVector := BasicArrayListD_Package.Create;
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
        inGameExclusiveOrientationSensorVector := BasicArrayListD_Package.Create;
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


