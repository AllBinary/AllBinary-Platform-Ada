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


with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;

package body org.allbinary.midlet.MidletFactoryInterface_Package is

   procedure Initialize_Fields (This : in out MidletFactoryInterface'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MidletFactoryInterface'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MidletFactoryInterface_Access is
      This : constant MidletFactoryInterface_Access := new MidletFactoryInterface;
   begin
      MidletFactoryInterface_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out MidletFactoryInterface) return MIDlet_Access is
   begin
        return AllBinaryMidlet_Package.getNullInstance;
   end getInstance;

end org.allbinary.midlet.MidletFactoryInterface_Package;


