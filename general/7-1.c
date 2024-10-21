typedef struct {
    float x, y, z;
} Vec3;

typedef struct {
    Vec3 origin, direction;
} Ray;

typedef struct {
    Vec3 center;
    float radius;
} Sphere;

typedef struct {
    int hit;
    float distance;
} RayHit;

Vec3 f1(Vec3 a, Vec3 b) {
    Vec3 res;
    res.x = a.x - b.x;
    res.y = a.y - b.y;
    res.z = a.z - b.z;
    return res;
}

float f2(Vec3 a, Vec3 b) {
    return a.x * b.x + a.y * b.y + a.z * b.z;
}

RayHit f3(Ray ray, Sphere sphere) {
    Vec3 oc;
    float a, b, c;
    float discriminant;
    RayHit hit = {0, 0.0f};

    oc = f1(ray.origin, sphere.center);
    a = f2(ray.direction, ray.direction);
    b = 2.0f * f2(oc, ray.direction);
    c = f2(oc, oc) - sphere.radius * sphere.radius;
    discriminant = b * b - 4 * a * c;
  
    if (discriminant >= 0) {
        hit.hit = 1;
        hit.distance = (-b - sqrt(discriminant)) / (2.0f * a);
    }
  
    return hit;
}
