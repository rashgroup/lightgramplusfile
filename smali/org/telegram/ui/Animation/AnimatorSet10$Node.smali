.class Lorg/telegram/ui/Animation/AnimatorSet10$Node;
.super Ljava/lang/Object;
.source "AnimatorSet10.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/AnimatorSet10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field public animation:Lorg/telegram/ui/Animation/Animator10;

.field public dependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;",
            ">;"
        }
    .end annotation
.end field

.field public done:Z

.field public nodeDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/AnimatorSet10$Node;",
            ">;"
        }
    .end annotation
.end field

.field public nodeDependents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/AnimatorSet10$Node;",
            ">;"
        }
    .end annotation
.end field

.field public tmpDependencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Animation/Animator10;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->tmpDependencies:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->done:Z

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    return-void
.end method


# virtual methods
.method public addDependency(Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;->node:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->clone()Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/ui/Animation/AnimatorSet10$Node;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;

    invoke-virtual {v1}, Lorg/telegram/ui/Animation/Animator10;->clone()Lorg/telegram/ui/Animation/Animator10;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->animation:Lorg/telegram/ui/Animation/Animator10;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
