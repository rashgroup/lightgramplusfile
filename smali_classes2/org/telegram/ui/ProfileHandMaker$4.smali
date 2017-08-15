.class Lorg/telegram/ui/ProfileHandMaker$4;
.super Ljava/lang/Object;
.source "ProfileHandMaker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileHandMaker;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileHandMaker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileHandMaker;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileHandMaker$4;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ProfileHandMaker$4;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    iget-object v0, v0, Lorg/telegram/ui/ProfileHandMaker;->ed:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileHandMaker$4;->this$0:Lorg/telegram/ui/ProfileHandMaker;

    iget-object v1, v1, Lorg/telegram/ui/ProfileHandMaker;->ed:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method
