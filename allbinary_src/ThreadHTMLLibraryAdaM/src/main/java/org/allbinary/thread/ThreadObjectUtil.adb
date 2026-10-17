--  Generated Code Do Not Modify


package body org.allbinary.thread.ThreadObjectUtil_Package is

   procedure Initialize_Fields (This : in out ThreadObjectUtil'Class) is
   begin
      null;
      This.NULL_PRIORITY_RUNNABLE := NullPriorityRunnable_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out ThreadObjectUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ThreadObjectUtil_Access is
      This : constant ThreadObjectUtil_Access := new ThreadObjectUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadObjectUtil_Access is
   begin
        return ThreadObjectUtil_Package.instance;
   end getInstance;

   procedure notifyObject (This : in out ThreadObjectUtil; anyType : Java_Object_Access) is
   begin
        null;
   end notifyObject;

   --  throws Exception
   procedure waitObject (This : in out ThreadObjectUtil; anyType : Java_Object_Access) is
   begin
        null;
   end waitObject;

   --  throws Exception
   procedure waitObjectFor (This : in out ThreadObjectUtil; anyType : Java_Object_Access; delay_Id : Long_Long_Integer) is
   begin
        null;
   end waitObjectFor;

   procedure processThread (This : in out ThreadObjectUtil; runnable : Runnable_Access) is
   begin
        runnable.run;
   end processThread;

   procedure getInstance is
      Java_Result : constant ThreadObjectUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ThreadObjectUtil_Package.Create;

end org.allbinary.thread.ThreadObjectUtil_Package;


