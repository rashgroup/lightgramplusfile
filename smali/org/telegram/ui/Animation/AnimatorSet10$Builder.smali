.class public Lorg/telegram/ui/Animation/AnimatorSet10$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Animation/AnimatorSet10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

.field final synthetic this$0:Lorg/telegram/ui/Animation/AnimatorSet10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Animation/AnimatorSet10;Lorg/telegram/ui/Animation/Animator10;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {p1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;-><init>(Lorg/telegram/ui/Animation/Animator10;)V

    iput-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {p1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;
    invoke-static {p1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$500(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public after(J)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/telegram/ui/Animation/ValueAnimator;->ofFloat([F)Lorg/telegram/ui/Animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Animation/ValueAnimator;->setDuration(J)Lorg/telegram/ui/Animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->after(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;-><init>(Lorg/telegram/ui/Animation/Animator10;)V

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$500(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10$Node;I)V

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->addDependency(Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;)V

    return-object p0
.end method

.method public before(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;-><init>(Lorg/telegram/ui/Animation/Animator10;)V

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$500(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10$Node;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->addDependency(Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;)V

    return-object p0
.end method

.method public with(Lorg/telegram/ui/Animation/Animator10;)Lorg/telegram/ui/Animation/AnimatorSet10$Builder;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;-><init>(Lorg/telegram/ui/Animation/Animator10;)V

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$200(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->this$0:Lorg/telegram/ui/Animation/AnimatorSet10;

    # getter for: Lorg/telegram/ui/Animation/AnimatorSet10;->mNodes:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Animation/AnimatorSet10;->access$500(Lorg/telegram/ui/Animation/AnimatorSet10;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;

    iget-object v2, p0, Lorg/telegram/ui/Animation/AnimatorSet10$Builder;->mCurrentNode:Lorg/telegram/ui/Animation/AnimatorSet10$Node;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;-><init>(Lorg/telegram/ui/Animation/AnimatorSet10$Node;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Animation/AnimatorSet10$Node;->addDependency(Lorg/telegram/ui/Animation/AnimatorSet10$Dependency;)V

    return-object p0
.end method
