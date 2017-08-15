.class Lorg/telegram/ui/ProfileMaker$3;
.super Ljava/lang/Object;
.source "ProfileMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileMaker;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileMaker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileMaker;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iput-object p2, p0, Lorg/telegram/ui/ProfileMaker$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->val$context:Landroid/content/Context;

    const v1, 0x7f0808c4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->main_ly:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->continue_ly:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_01a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_02a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_03a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_04a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_05a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->main_io:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->scrolla:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator1(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_01:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$1;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_01:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2593\u2592\u2591"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2591\u2592\u2593\u2588\u2587\u2586\u2585\u2584\u2583\u2582"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator2(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_01:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$2;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_01:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2593\u2592\u2591"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2591\u2592\u2593\u2588\u2587\u2586\u2585\u2584\u2583\u2582"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_02:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$3;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$3;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_02:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(\u00af`\u273f.\u00b8(\u00af`\u2019\u2665."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".\u2665\u2019\u00b4\u00af)\u00b8.\u273f \u2018\u00b4\u00af)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator3(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_02:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$4;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_02:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(\u00af`\u273f.\u00b8(\u00af`\u2019\u2665."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".\u2665\u2019\u00b4\u00af)\u00b8.\u273f \u2018\u00b4\u00af)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_03:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$5;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$5;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_03:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u02dc\u201d*\u00b0\u2022.\u02dc\u201d*\u00b0\u2022"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022\u00b0*\u201d\u02dc.\u2022\u00b0*\u201d\u02dc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator1(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_03:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$6;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_03:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u02dc\u201d*\u00b0\u2022.\u02dc\u201d*\u00b0\u2022"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022\u00b0*\u201d\u02dc.\u2022\u00b0*\u201d\u02dc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_04:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$7;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$7;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_04:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u25d4\u035c\u0361\u25d4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u25d4\u035c\u0361\u25d4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator5(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_04:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$8;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_04:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u25d4\u035c\u0361\u25d4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u25d4\u035c\u0361\u25d4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_05:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$9;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$9;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_05:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2018\u00b0\u00ba\u00f8\u2022\u2764\u2022.\u00b8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b8.\u2022\u2764\u2022\u00f8\u00ba\u00b0\u2018"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator6(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_b

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_05:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$10;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_05:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2018\u00b0\u00ba\u00f8\u2022\u2764\u2022.\u00b8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b8.\u2022\u2764\u2022\u00f8\u00ba\u00b0\u2018"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_06:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$11;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$11;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_06:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u25e6\u2022\u25cf\u25c9\u273f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u273f\u25c9\u25cf\u2022\u25e6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator7(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_06:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$12;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_06:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u25e6\u2022\u25cf\u25c9\u273f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u273f\u25c9\u25cf\u2022\u25e6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_07:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$13;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$13;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_07:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".\u2022\u266b\u2022\u266c\u2022"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022\u266c\u2022\u266b\u2022."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_e
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator8(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_f

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_07:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$14;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_07:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ".\u2022\u266b\u2022\u266c\u2022"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022\u266c\u2022\u266b\u2022."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_08:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$15;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$15;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_08:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator9(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_11

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_08:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$16;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_08:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_09:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$17;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$17;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_09:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_12
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator10(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_13

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_09:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$18;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_09:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(#)o\u00b0*\u00b0o..(#)..o\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_10:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$19;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$19;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_10:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u02d9\u0387\u0660\u2022\u25cf\u2665"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_14
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_15

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_10:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$20;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_10:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u02d9\u0387\u0660\u2022\u25cf\u2665"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_11:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$21;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$21;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_11:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u25cf\u25ac\u25ac\u0e51\u06e9\u06e9\u0e51"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0e51\u06e9\u06e9\u0e51\u25ac\u25ac\u25cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_16
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator12(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_17

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_11:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$22;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_11:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u25cf\u25ac\u25ac\u0e51\u06e9\u06e9\u0e51"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0e51\u06e9\u06e9\u0e51\u25ac\u25ac\u25cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_12:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$23;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$23;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_12:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "( \uff65_\uff65)\u00bb(\uff9f\uff70\uff9f)\u00bb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00ab(\uff9f\uff70\uff9f)\u00ab( \uff65_\uff65)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_18
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator13(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_19

    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_12:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$24;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_12:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "( \uff65_\uff65)\u00bb(\uff9f\uff70\uff9f)\u00bb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00ab(\uff9f\uff70\uff9f)\u00ab( \uff65_\uff65)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_18

    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_13:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$25;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$25;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_13:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1a
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator14(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1b

    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_13:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$26;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_13:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0b9c\u06e9\u06e9\u0b9c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_14:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$27;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$27;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_14:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2730\u2730(\u00af`*\u2022."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1c
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator15(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1d

    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_14:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$28;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_14:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2730\u2730(\u00af`*\u2022."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_15:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$29;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$29;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_15:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(\u273f\u25e0\u203f\u25e0\u2665)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\u2665\u25e0\u203f\u25e0\u273f)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1e
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator16(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1f

    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_15:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$30;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_15:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(\u273f\u25e0\u203f\u25e0\u2665)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\u2665\u25e0\u203f\u25e0\u273f)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1e

    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_16:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$31;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$31;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_16:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_20
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator17(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_21

    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_16:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$32;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$32;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_16:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022\u00a4\u00bb((\u00af\u2665\u00af))\u00ab\u00a4\u2022"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_17:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$33;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$33;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_17:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2219\u2219\u2219\u2219\u2219\u00b7\u25ab\u25ab\u1d52\u1d3c\u1d52 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u1d52\u1d3c\u1d52\u25ab\u25ab\u00b7\u2219\u2219\u2219\u2219\u2219 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_22
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator18(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_23

    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_17:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$34;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$34;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_17:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2219\u2219\u2219\u2219\u2219\u00b7\u25ab\u25ab\u1d52\u1d3c\u1d52 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u1d52\u1d3c\u1d52\u25ab\u25ab\u00b7\u2219\u2219\u2219\u2219\u2219 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_18:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$35;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$35;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_18:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u02d9\u0387\u0660\u2022\u25cf\u2665 \u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7 \u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_24
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator19(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_25

    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_18:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$36;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_18:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u02d9\u0387\u0660\u2022\u25cf\u2665 \u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u01b8\u0335\u0321\u04dc\u0335\u0328\u0304\u01b7 \u2665\u25cf\u2022\u0660\u0387\u02d9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_19:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$37;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$37;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_19:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " \u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8\u2764"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u2764\u00b8\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_26
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator20(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_27

    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_19:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$38;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$38;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_19:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " \u266a\u266b\u2022*\u00a8*\u2022.\u00b8\u00b8\u2764"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u2764\u00b8\u00b8.\u2022*\u00a8*\u2022\u266b\u266a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26

    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_20:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$39;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$39;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_20:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2013\u2013\u2013\u2013\u2022(-\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022-)\u2022\u2013\u2013\u2013\u2013"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_28
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator21(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_29

    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_20:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$40;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$40;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_20:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2013\u2013\u2013\u2013\u2022(-\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2022-)\u2022\u2013\u2013\u2013\u2013"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_21:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$41;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$41;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_21:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " .:**:.\u2606*.:\uff61.\u273f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u273f.\uff61.:* \u2606:**:."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2a
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator22(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2b

    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_21:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$42;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$42;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_21:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " .:**:.\u2606*.:\uff61.\u273f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u273f.\uff61.:* \u2606:**:."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_22:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$43;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$43;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_22:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2c
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->ch:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->Splator(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileMaker;->arraysplator23(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iget-object v1, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2d

    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_22:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$44;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$44;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_22:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u0131l\u0131ll|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|\u0332\u0305\u0305=\u0332\u0305\u0305|\u0332\u0305\u0305\u25cf\u0332\u0305\u0305|ll\u0131l\u0131"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_23:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ProfileMaker$3$45;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ProfileMaker$3$45;-><init>(Lorg/telegram/ui/ProfileMaker$3;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_23:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u2730\u2730(\u00af`*\u2022.\u00b8,\u00a4\u00b0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0\u00a4,\u00b8.\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->list2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2e
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_01:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$47;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$47;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_02:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$48;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$48;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_03:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$49;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$49;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_04:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$50;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$50;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_05:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$51;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$51;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_06:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$52;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$52;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_07:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$53;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$53;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_08:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$54;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$54;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_09:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$55;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$55;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_10:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$56;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$56;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_11:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$57;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$57;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_12:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$58;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$58;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_13:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$59;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$59;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_14:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$60;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$60;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_15:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$61;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$61;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_16:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$62;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$62;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_17:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$63;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$63;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_18:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$64;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$64;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_19:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$65;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$65;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_20:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$66;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$66;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_21:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$67;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$67;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_22:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$68;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$68;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->fr_23:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$69;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$69;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->clip_23:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ProfileMaker$3$46;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileMaker$3$46;-><init>(Lorg/telegram/ui/ProfileMaker$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileMaker;->change_23:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2730\u2730(\u00af`*\u2022.\u00b8,\u00a4\u00b0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileMaker$3;->this$0:Lorg/telegram/ui/ProfileMaker;

    iget-object v2, v2, Lorg/telegram/ui/ProfileMaker;->ed_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0\u00a4,\u00b8.\u2022*\u00b4\u00af)\u2730\u2730"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2e
.end method
