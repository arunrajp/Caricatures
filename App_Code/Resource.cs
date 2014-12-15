using System.Collections.Generic;

public class Custom
{
    public string alt { get; set; }
    public string caption { get; set; }
}

public class Context
{
    public Custom custom { get; set; }
}

public class Resource
{
    public string public_id { get; set; }
    public string format { get; set; }
    public int version { get; set; }
    public string resource_type { get; set; }
    public string type { get; set; }
    public string created_at { get; set; }
    public int bytes { get; set; }
    public int width { get; set; }
    public int height { get; set; }
    public string url { get; set; }
    public string secure_url { get; set; }
    public Context context { get; set; }
}

public class Templates
{
    public List<Resource> resources { get; set; }
}