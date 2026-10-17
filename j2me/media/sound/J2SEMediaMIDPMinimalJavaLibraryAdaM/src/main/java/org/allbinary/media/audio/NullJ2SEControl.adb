-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.media.audio.NullJ2SEControl_Package is

   procedure Initialize_Fields (This : in out NullJ2SEControl'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NullJ2SEControl'Class; type_Id_Param : access Type'Class) is
      type_Id : Type_Access := Type_Access (type_Id_Param);
   begin
        Control_Package.Initialize (This, type_Id);
   end Initialize;

   function Create (type_Id_Param : access Type'Class) return NullJ2SEControl_Access is
      This : constant NullJ2SEControl_Access := new NullJ2SEControl;
   begin
      NullJ2SEControl_Package.Initialize (This.all, type_Id_Param);
      return This;
   end Create;

end org.allbinary.media.audio.NullJ2SEControl_Package;


