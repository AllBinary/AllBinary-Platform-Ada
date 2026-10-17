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
      ThreadObjectUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ThreadObjectUtil_Access is
   begin
        return ThreadObjectUtil_Package.instance;
   end getInstance;

   procedure notifyObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end notifyObject;

   --  throws Exception
   procedure waitObject (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end waitObject;

   --  throws Exception
   procedure waitObjectFor (This : in out ThreadObjectUtil; anyType_Param : access Java_Object'Class; delay_Id : Long_Long_Integer) is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end waitObjectFor;

   procedure processThread (This : in out ThreadObjectUtil; runnable_Param : access Runnable'Class) is
      runnable : Runnable_Access := Runnable_Access (runnable_Param);
   begin
        runnable.run;
   end processThread;

begin
   null;
   instance := ThreadObjectUtil_Package.Create;

end org.allbinary.thread.ThreadObjectUtil_Package;


