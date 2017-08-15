.class Lorg/telegram/ui/FontSelector$3;
.super Ljava/lang/Object;
.source "FontSelector.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FontSelector;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FontSelector;

.field final synthetic val$rd:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FontSelector;Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    iput-object p2, p0, Lorg/telegram/ui/FontSelector$3;->val$rd:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->val$rd:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FontSelector$3;->val$rd:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const-string/jumbo v1, "Log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "radio select"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "1"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "2"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "3"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "4"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "5"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "6"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    const-string/jumbo v0, "7"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_8
    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "8"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    const-string/jumbo v0, "9"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "10"

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/FontSelector$3;->this$0:Lorg/telegram/ui/FontSelector;

    invoke-virtual {v0}, Lorg/telegram/ui/FontSelector;->Restarter()V

    goto/16 :goto_0
.end method
