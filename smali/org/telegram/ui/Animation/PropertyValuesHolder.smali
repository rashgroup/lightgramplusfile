.class public Lorg/telegram/ui/Animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

.field protected mProperty:Lorg/telegram/ui/Animation/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/telegram/ui/Animation/IntEvaluator;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/IntEvaluator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sIntEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    new-instance v0, Lorg/telegram/ui/Animation/FloatEvaluator;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/FloatEvaluator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sFloatEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/telegram/ui/Animation/PropertyValuesHolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Animation/Property;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Animation/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/PropertyValuesHolder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;)V

    return-void
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-array v5, v6, [Ljava/lang/Class;

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    :goto_2
    array-length v6, v0

    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_4

    aget-object v7, v0, v2

    aput-object v7, v5, v3

    :try_start_3
    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v7, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    goto :goto_2

    :cond_3
    new-array v0, v6, [Ljava/lang/Class;

    iget-object v2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v2, v0, v3

    goto :goto_2

    :catch_2
    move-exception v8

    :try_start_4
    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iput-object v7, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Lorg/telegram/ui/Animation/Property;[F)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Animation/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lorg/telegram/ui/Animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Lorg/telegram/ui/Animation/Property;[I)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Animation/Property",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lorg/telegram/ui/Animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lorg/telegram/ui/Animation/Keyframe;)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 2

    invoke-static {p1}, Lorg/telegram/ui/Animation/KeyframeSet;->ofKeyframe([Lorg/telegram/ui/Animation/Keyframe;)Lorg/telegram/ui/Animation/KeyframeSet;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lorg/telegram/ui/Animation/IntKeyframeSet;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Lorg/telegram/ui/Animation/IntKeyframeSet;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Lorg/telegram/ui/Animation/FloatKeyframeSet;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/ui/Animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    move-object v0, v1

    goto :goto_0
.end method

.method public static varargs ofKeyframe(Lorg/telegram/ui/Animation/Property;[Lorg/telegram/ui/Animation/Keyframe;)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 2

    invoke-static {p1}, Lorg/telegram/ui/Animation/KeyframeSet;->ofKeyframe([Lorg/telegram/ui/Animation/Keyframe;)Lorg/telegram/ui/Animation/KeyframeSet;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lorg/telegram/ui/Animation/IntKeyframeSet;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/IntKeyframeSet;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/FloatKeyframeSet;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/ui/Animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;)V

    iput-object v0, v1, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    move-object v0, v1

    goto :goto_0
.end method

.method public static varargs ofObject(Ljava/lang/String;Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/telegram/ui/Animation/Property;",
            "Lorg/telegram/ui/Animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Lorg/telegram/ui/Animation/PropertyValuesHolder;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    :cond_0
    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private setupValue(Ljava/lang/Object;Lorg/telegram/ui/Animation/Keyframe;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Animation/Keyframe;->setValue(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->clone()Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    iput-object v1, v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/KeyframeSet;->clone()Lorg/telegram/ui/Animation/KeyframeSet;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    iput-object v1, v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sIntEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/KeyframeSet;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sFloatEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Animation/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mEvaluator:Lorg/telegram/ui/Animation/TypeEvaluator;

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/KeyframeSet;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/telegram/ui/Animation/KeyframeSet;->ofFloat([F)Lorg/telegram/ui/Animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/telegram/ui/Animation/KeyframeSet;->ofInt([I)Lorg/telegram/ui/Animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    return-void
.end method

.method public varargs setKeyframes([Lorg/telegram/ui/Animation/Keyframe;)V
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lorg/telegram/ui/Animation/Keyframe;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Animation/KeyframeSet;-><init>([Lorg/telegram/ui/Animation/Keyframe;)V

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-static {p1}, Lorg/telegram/ui/Animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Lorg/telegram/ui/Animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    return-void
.end method

.method public setProperty(Lorg/telegram/ui/Animation/Property;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v0, v0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v1, v1, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lorg/telegram/ui/Animation/Keyframe;)V

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "set"

    iget-object v2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v0, v0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->hasValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Animation/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v0, v0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Keyframe;->hasValue()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_5

    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    iget-object v3, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_5

    :cond_4
    return-void

    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v0, v0, Lorg/telegram/ui/Animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lorg/telegram/ui/Animation/Keyframe;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
