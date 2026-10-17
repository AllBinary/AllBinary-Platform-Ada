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


package body org.allbinary.game.input.form.NullRTSFormInputFactory_Package is

   procedure Initialize_Fields (This : in out NullRTSFormInputFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullRTSFormInputFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullRTSFormInputFactory_Access is
      This : constant NullRTSFormInputFactory_Access := new NullRTSFormInputFactory;
   begin
      NullRTSFormInputFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RTSFormInput_Access is
   begin
        return NullRTSFormInputFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := RTSFormInput_Package.Create (BasicGroupFactory_Package.getInstance.NONE_ARRAY);

end org.allbinary.game.input.form.NullRTSFormInputFactory_Package;


