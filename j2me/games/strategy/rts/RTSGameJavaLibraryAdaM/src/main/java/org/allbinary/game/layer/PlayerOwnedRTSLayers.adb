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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.layer.PlayerOwnedRTSLayers_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out PlayerOwnedRTSLayers'Class) is
   begin
      null;
      This.rtsLayerList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out PlayerOwnedRTSLayers'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlayerOwnedRTSLayers_Access is
      This : constant PlayerOwnedRTSLayers_Access := new PlayerOwnedRTSLayers;
   begin
      PlayerOwnedRTSLayers_Package.Initialize (This.all);
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

end org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;


