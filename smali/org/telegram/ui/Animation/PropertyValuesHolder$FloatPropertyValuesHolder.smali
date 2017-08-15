.class Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Lorg/telegram/ui/Animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mFloatAnimatedValue:F

.field mFloatKeyframeSet:Lorg/telegram/ui/Animation/FloatKeyframeSet;

.field private mFloatProperty:Lorg/telegram/ui/Animation/FloatProperty10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/ui/Animation/FloatKeyframeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lorg/telegram/ui/Animation/PropertyValuesHolder$1;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    check-cast v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lorg/telegram/ui/Animation/FloatKeyframeSet;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Lorg/telegram/ui/Animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/FloatKeyframeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/PropertyValuesHolder$1;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    check-cast v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lorg/telegram/ui/Animation/FloatKeyframeSet;

    instance-of v0, p1, Lorg/telegram/ui/Animation/FloatProperty10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    check-cast v0, Lorg/telegram/ui/Animation/FloatProperty10;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lorg/telegram/ui/Animation/FloatProperty10;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lorg/telegram/ui/Animation/Property;[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;-><init>(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    instance-of v0, p1, Lorg/telegram/ui/Animation/FloatProperty10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    check-cast v0, Lorg/telegram/ui/Animation/FloatProperty10;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lorg/telegram/ui/Animation/FloatProperty10;

    :cond_0
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lorg/telegram/ui/Animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->clone()Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    iget-object v1, v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    check-cast v1, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    iput-object v1, v0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lorg/telegram/ui/Animation/FloatKeyframeSet;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/telegram/ui/Animation/PropertyValuesHolder;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lorg/telegram/ui/Animation/FloatProperty10;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Lorg/telegram/ui/Animation/FloatProperty10;

    iget v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Animation/FloatProperty10;->setValue(Ljava/lang/Object;F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    iget v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Animation/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs setFloatValues([F)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframeSet:Lorg/telegram/ui/Animation/KeyframeSet;

    check-cast v0, Lorg/telegram/ui/Animation/FloatKeyframeSet;

    iput-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframeSet:Lorg/telegram/ui/Animation/FloatKeyframeSet;

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    goto :goto_0
.end method
