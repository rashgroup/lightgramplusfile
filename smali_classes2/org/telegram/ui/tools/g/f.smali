.class public Lorg/telegram/ui/tools/g/f;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UpdateCursorAdapter.java"


# instance fields
.field private a:Lorg/telegram/ui/tools/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Lorg/telegram/ui/tools/g/a;

    invoke-direct {v0}, Lorg/telegram/ui/tools/g/a;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/f;->a:Lorg/telegram/ui/tools/g/a;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    check-cast p1, Lorg/telegram/ui/tools/g/e;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/f;->a:Lorg/telegram/ui/tools/g/a;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/tools/g/a;->a(Landroid/database/Cursor;)Lorg/telegram/ui/tools/g/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/tools/g/e;->setData(Lorg/telegram/ui/tools/g/g;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    new-instance v0, Lorg/telegram/ui/tools/g/e;

    iget-object v1, p0, Lorg/telegram/ui/tools/g/f;->mContext:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/tools/g/e;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
