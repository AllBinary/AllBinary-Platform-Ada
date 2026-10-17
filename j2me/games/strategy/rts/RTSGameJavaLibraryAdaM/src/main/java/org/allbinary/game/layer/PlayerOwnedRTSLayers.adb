-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.PlayerOwnedRTSLayers_Package is

   procedure Initialize_Fields (This : in out PlayerOwnedRTSLayers'Class) is
   begin
      null;
      This.rtsLayerList := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out PlayerOwnedRTSLayers'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlayerOwnedRTSLayers_Access is
      This : constant PlayerOwnedRTSLayers_Access := new PlayerOwnedRTSLayers;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function toString (This : in out PlayerOwnedRTSLayers) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("All: "));
        stringBuffer.appendint (This.rtsLayerList.size);
        return stringBuffer.toString;
   end toString;

   procedure toString (This : in out PlayerOwnedRTSLayers) is
      Java_Result : constant Unbounded_String := PlayerOwnedRTSLayers'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;


