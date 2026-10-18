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

package body org.allbinary.game.configuration.feature.InputFeatureFactory_Package is

   procedure Initialize_Fields (This : in out InputFeatureFactory'Class) is
   begin
      null;
      This.REMOVE_DUPLICATE_KEY_PRESSES := InputFeature_Package.Create (To_Unbounded_String ("Remove Duplicate Key Presses"));
      This.INPUT_MAPPING := InputFeature_Package.Create (To_Unbounded_String ("Input Mapping"));
      This.MULTI_KEY_PRESS := InputFeature_Package.Create (To_Unbounded_String ("Multi Key Press"));
      This.SINGLE_KEY_REPEAT_PRESS := InputFeature_Package.Create (To_Unbounded_String ("Single Key Repeat Press"));
      This.SINGLE_KEY_PRESS := InputFeature_Package.Create (To_Unbounded_String ("Single Key Press"));
   end Initialize_Fields;


   function getInstance return InputFeatureFactory_Access is
   begin
        return InputFeatureFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out InputFeatureFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputFeatureFactory_Access is
      This : constant InputFeatureFactory_Access := new InputFeatureFactory;
   begin
      InputFeatureFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function isSingleKeyProcessing (This : in out InputFeatureFactory) return Boolean is
      features : Features_Access;
   begin
        features := Features_Package.getInstance;
        if (features.isFeature (This.SINGLE_KEY_REPEAT_PRESS)) or else (features.isFeature (This.SINGLE_KEY_PRESS)) then
            return True;
        else
            return False;
        end if;
   end isSingleKeyProcessing;

begin
   null;
   instance := InputFeatureFactory_Package.Create;

end org.allbinary.game.configuration.feature.InputFeatureFactory_Package;


