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


package body org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package is

   procedure Initialize_Fields (This : in out AnalogLocationInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnalogLocationInputProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnalogLocationInputProcessor_Access is
      This : constant AnalogLocationInputProcessor_Access := new AnalogLocationInputProcessor;
   begin
      AnalogLocationInputProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out AnalogLocationInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; analogLocationInput : AnalogLocationInput_Access) is
   begin
        null;
   end process;

end org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;


