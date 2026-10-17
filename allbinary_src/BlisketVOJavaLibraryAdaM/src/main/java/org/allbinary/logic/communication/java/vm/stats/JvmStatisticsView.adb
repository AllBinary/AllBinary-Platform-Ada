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


package body org.allbinary.logic.communication.java.vm.stats.JvmStatisticsView_Package is

   procedure Initialize_Fields (This : in out JvmStatisticsView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out JvmStatisticsView'Class) is
   begin
        JvmStatisticsMapping_Package.Initialize (This);
   end Initialize;

   function Create return JvmStatisticsView_Access is
      This : constant JvmStatisticsView_Access := new JvmStatisticsView;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out JvmStatisticsView; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := This.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, JvmStatisticsData_Package.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out JvmStatisticsView; document : Document_Access) is
      Java_Result : constant Node_Access := JvmStatisticsView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.java.vm.stats.JvmStatisticsView_Package;


