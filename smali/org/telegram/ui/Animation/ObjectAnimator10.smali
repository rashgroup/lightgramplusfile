.class public final Lorg/telegram/ui/Animation/ObjectAnimator10;
.super Lorg/telegram/ui/Animation/ValueAnimator;
.source "ObjectAnimator10.java"


# static fields
.field private static final PROXY_PROPERTIES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Animation/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoCancel:Z

.field private mProperty:Lorg/telegram/ui/Animation/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10$1;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Animation/ObjectAnimator10$1;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/telegram/ui/Animation/ObjectAnimator10$2;

    const-string/jumbo v2, "pivotX"

    invoke-direct {v1, v2}, Lorg/telegram/ui/Animation/ObjectAnimator10$2;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/telegram/ui/Animation/ObjectAnimator10$3;

    const-string/jumbo v3, "pivotY"

    invoke-direct {v2, v3}, Lorg/telegram/ui/Animation/ObjectAnimator10$3;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/ui/Animation/ObjectAnimator10$4;

    const-string/jumbo v4, "translationX"

    invoke-direct {v3, v4}, Lorg/telegram/ui/Animation/ObjectAnimator10$4;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/telegram/ui/Animation/ObjectAnimator10$5;

    const-string/jumbo v5, "translationY"

    invoke-direct {v4, v5}, Lorg/telegram/ui/Animation/ObjectAnimator10$5;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/telegram/ui/Animation/ObjectAnimator10$6;

    const-string/jumbo v6, "rotation"

    invoke-direct {v5, v6}, Lorg/telegram/ui/Animation/ObjectAnimator10$6;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/telegram/ui/Animation/ObjectAnimator10$7;

    const-string/jumbo v7, "rotationX"

    invoke-direct {v6, v7}, Lorg/telegram/ui/Animation/ObjectAnimator10$7;-><init>(Ljava/lang/String;)V

    new-instance v7, Lorg/telegram/ui/Animation/ObjectAnimator10$8;

    const-string/jumbo v8, "rotationY"

    invoke-direct {v7, v8}, Lorg/telegram/ui/Animation/ObjectAnimator10$8;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/telegram/ui/Animation/ObjectAnimator10$9;

    const-string/jumbo v9, "scaleX"

    invoke-direct {v8, v9}, Lorg/telegram/ui/Animation/ObjectAnimator10$9;-><init>(Ljava/lang/String;)V

    new-instance v9, Lorg/telegram/ui/Animation/ObjectAnimator10$10;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Lorg/telegram/ui/Animation/ObjectAnimator10$10;-><init>(Ljava/lang/String;)V

    new-instance v10, Lorg/telegram/ui/Animation/ObjectAnimator10$11;

    const-string/jumbo v11, "scrollX"

    invoke-direct {v10, v11}, Lorg/telegram/ui/Animation/ObjectAnimator10$11;-><init>(Ljava/lang/String;)V

    new-instance v11, Lorg/telegram/ui/Animation/ObjectAnimator10$12;

    const-string/jumbo v12, "scrollY"

    invoke-direct {v11, v12}, Lorg/telegram/ui/Animation/ObjectAnimator10$12;-><init>(Ljava/lang/String;)V

    new-instance v12, Lorg/telegram/ui/Animation/ObjectAnimator10$13;

    const-string/jumbo v13, "x"

    invoke-direct {v12, v13}, Lorg/telegram/ui/Animation/ObjectAnimator10$13;-><init>(Ljava/lang/String;)V

    new-instance v13, Lorg/telegram/ui/Animation/ObjectAnimator10$14;

    const-string/jumbo v14, "y"

    invoke-direct {v13, v14}, Lorg/telegram/ui/Animation/ObjectAnimator10$14;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v15, "alpha"

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v14, "pivotX"

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "pivotY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "translationX"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "translationY"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "rotation"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "rotationX"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "rotationY"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "scaleX"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "scaleY"

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "scrollX"

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "scrollY"

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mAutoCancel:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mAutoCancel:Z

    iput-object p1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lorg/telegram/ui/Animation/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/telegram/ui/Animation/Property",
            "<TT;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/telegram/ui/Animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mAutoCancel:Z

    iput-object p1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setProperty(Lorg/telegram/ui/Animation/Property;)V

    return-void
.end method

.method private hasSameTargetAndProperties(Lorg/telegram/ui/Animation/Animator10;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->getValues()[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v2

    check-cast p1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-virtual {p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    array-length v3, v2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    aget-object v4, v2, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Lorg/telegram/ui/Animation/Property;[F)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/telegram/ui/Animation/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lorg/telegram/ui/Animation/ObjectAnimator10;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;-><init>(Ljava/lang/Object;Lorg/telegram/ui/Animation/Property;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Lorg/telegram/ui/Animation/Property;[I)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/telegram/ui/Animation/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lorg/telegram/ui/Animation/ObjectAnimator10;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;-><init>(Ljava/lang/Object;Lorg/telegram/ui/Animation/Property;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/telegram/ui/Animation/Property",
            "<TT;TV;>;",
            "Lorg/telegram/ui/Animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Lorg/telegram/ui/Animation/ObjectAnimator10;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;-><init>(Ljava/lang/Object;Lorg/telegram/ui/Animation/Property;)V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setEvaluator(Lorg/telegram/ui/Animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Lorg/telegram/ui/Animation/PropertyValuesHolder;)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    invoke-direct {v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;-><init>()V

    iput-object p0, v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 5

    invoke-super {p0, p1}, Lorg/telegram/ui/Animation/ValueAnimator;->animateValue(F)V

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->clone()Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/telegram/ui/Animation/Animator10;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->clone()Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->clone()Lorg/telegram/ui/Animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ObjectAnimator10;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->clone()Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/Property;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    if-nez v1, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method initAnimation()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mInitialized:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->PROXY_PROPERTIES:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/Property;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setProperty(Lorg/telegram/ui/Animation/Property;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->initAnimation()V

    :cond_2
    return-void
.end method

.method public setAutoCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mAutoCancel:Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Lorg/telegram/ui/Animation/Animator10;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setDuration(J)Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lorg/telegram/ui/Animation/ObjectAnimator10;
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Animation/ValueAnimator;->setDuration(J)Lorg/telegram/ui/Animation/ValueAnimator;

    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lorg/telegram/ui/Animation/ValueAnimator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setDuration(J)Lorg/telegram/ui/Animation/ObjectAnimator10;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-static {v1, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofFloat(Lorg/telegram/ui/Animation/Property;[F)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-static {v1, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofInt(Lorg/telegram/ui/Animation/Property;[I)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    invoke-static {v1, v3, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofObject(Lorg/telegram/ui/Animation/Property;Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Lorg/telegram/ui/Animation/PropertyValuesHolder;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lorg/telegram/ui/Animation/TypeEvaluator;[Ljava/lang/Object;)Lorg/telegram/ui/Animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->setValues([Lorg/telegram/ui/Animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProperty(Lorg/telegram/ui/Animation/Property;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setProperty(Lorg/telegram/ui/Animation/Property;)V

    iget-object v2, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValuesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Animation/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mProperty:Lorg/telegram/ui/Animation/Property;

    iput-boolean v3, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mInitialized:Z

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mPropertyName:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mInitialized:Z

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    iput-object p1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mInitialized:Z

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->initAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/ObjectAnimator10;->initAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mValues:[Lorg/telegram/ui/Animation/PropertyValuesHolder;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/Animation/ObjectAnimator10;->mTarget:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    sget-object v0, Lorg/telegram/ui/Animation/ObjectAnimator10;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    iget-boolean v3, v1, Lorg/telegram/ui/Animation/ObjectAnimator10;->mAutoCancel:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->hasSameTargetAndProperties(Lorg/telegram/ui/Animation/Animator10;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->cancel()V

    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    iget-boolean v3, v1, Lorg/telegram/ui/Animation/ObjectAnimator10;->mAutoCancel:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->hasSameTargetAndProperties(Lorg/telegram/ui/Animation/Animator10;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->cancel()V

    :cond_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Animation/ObjectAnimator10;

    iget-boolean v3, v1, Lorg/telegram/ui/Animation/ObjectAnimator10;->mAutoCancel:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->hasSameTargetAndProperties(Lorg/telegram/ui/Animation/Animator10;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/ObjectAnimator10;->cancel()V

    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    :cond_5
    invoke-super {p0}, Lorg/telegram/ui/Animation/ValueAnimator;->start()V

    return-void
.end method
