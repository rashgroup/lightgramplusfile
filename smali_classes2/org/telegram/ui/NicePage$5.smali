.class Lorg/telegram/ui/NicePage$5;
.super Ljava/lang/Object;
.source "NicePage.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NicePage;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NicePage;

.field final synthetic val$rd:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/NicePage;Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/NicePage$5;->this$0:Lorg/telegram/ui/NicePage;

    iput-object p2, p0, Lorg/telegram/ui/NicePage$5;->val$rd:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/NicePage$5;->val$rd:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NicePage$5;->val$rd:Landroid/widget/RadioGroup;

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

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v4, :cond_2

    invoke-static {v4}, Lorg/telegram/ui/tools/c/g;->a(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    invoke-static {v5}, Lorg/telegram/ui/tools/c/g;->a(I)V

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    invoke-static {v6}, Lorg/telegram/ui/tools/c/g;->a(I)V

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_5

    invoke-static {v7}, Lorg/telegram/ui/tools/c/g;->a(I)V

    goto :goto_0

    :cond_5
    if-ne v0, v8, :cond_0

    invoke-static {v8}, Lorg/telegram/ui/tools/c/g;->a(I)V

    goto :goto_0
.end method
