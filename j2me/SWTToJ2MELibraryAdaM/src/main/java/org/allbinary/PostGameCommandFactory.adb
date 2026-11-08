-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package; use org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;

package body org.allbinary.PostGameCommandFactory_Package is

   package MultiPlayerGameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   procedure Initialize_Fields (This : in out PostGameCommandFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PostGameCommandFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PostGameCommandFactory_Access is
      This : constant PostGameCommandFactory_Access := new PostGameCommandFactory;
   begin
      PostGameCommandFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PostGameCommandFactory_Access is
   begin
        return PostGameCommandFactory_Access (PostGameCommandFactory_Package.instance);
   end getInstance;

   procedure addCommands (This : in out PostGameCommandFactory; canvas_Param : access MyCanvas_Package.MyCanvas'Class) is
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
   begin
        MultiPlayerGameFeatureFactory_Package.getInstance.addCommands (canvas);
   end addCommands;

begin
   null;
   instance := PostGameCommandFactory_Package.Create;

end org.allbinary.PostGameCommandFactory_Package;


